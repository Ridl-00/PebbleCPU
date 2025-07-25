`include "defines.v"

module icache (
    input  wire         clk,
    input  wire         resetn,
    
    // CPU侧接口 (来自IF阶段)
    input  wire         cpu_req,           // CPU请求有效
    input  wire         cpu_wr,            // 写请求(指令缓存只读，恒为0)
    input  wire [3:0]   cpu_wstrb,         // 写字节使能(指令缓存不用)
    input  wire [1:0]   cpu_size,          // 访问大小
    input  wire [31:0]  cpu_addr,          // CPU请求地址
    input  wire [31:0]  cpu_wdata,         // 写数据(指令缓存不用)
    output reg          cpu_addr_ok,       // 地址握手成功
    output reg          cpu_data_ok,       // 数据返回有效
    output reg  [31:0]  cpu_rdata,         // 返回给CPU的数据
    
    // AXI侧接口 (连接到axi_bridge)
    output reg          axi_req,           // 向AXI发起请求
    output wire         axi_wr,            // AXI写请求(恒为0)
    output wire [3:0]   axi_wstrb,         // AXI写字节使能
    output wire [1:0]   axi_size,          // AXI访问大小
    output reg  [31:0]  axi_addr,          // AXI请求地址
    output wire [31:0]  axi_wdata,         // AXI写数据
    input  wire         axi_addr_ok,       // AXI地址握手成功
    input  wire         axi_data_ok,       // AXI数据返回有效
    input  wire [31:0]  axi_rdata          // 从AXI返回的数据
);

// Cache参数定义
localparam CACHE_SIZE    = 8192;           // 8KB
localparam BLOCK_SIZE    = 16;             // 16字节缓存行
localparam WAYS          = 2;              // 2路组相联
localparam SETS          = CACHE_SIZE / (BLOCK_SIZE * WAYS); // 256组
localparam WORDS_PER_BLOCK = BLOCK_SIZE / 4; // 每缓存行4个字

// 地址分解
localparam OFFSET_WIDTH  = 4;              // log2(16) = 4
localparam INDEX_WIDTH   = 8;              // log2(256) = 8  
localparam TAG_WIDTH     = 32 - INDEX_WIDTH - OFFSET_WIDTH; // 20位

// 状态机定义
localparam IDLE       = 3'b000;
localparam LOOKUP     = 3'b001;
localparam MISS       = 3'b010;
localparam REPLACE    = 3'b011;
localparam REFILL     = 3'b100;

reg [2:0] state, next_state;

// 循环变量声明
integer i, j;

// 地址分解
wire [TAG_WIDTH-1:0]    req_tag;
wire [INDEX_WIDTH-1:0]  req_index;
wire [OFFSET_WIDTH-1:0] req_offset;
wire [1:0]              req_word_offset;

assign req_tag        = cpu_addr[31:INDEX_WIDTH+OFFSET_WIDTH];
assign req_index      = cpu_addr[INDEX_WIDTH+OFFSET_WIDTH-1:OFFSET_WIDTH];
assign req_offset     = cpu_addr[OFFSET_WIDTH-1:0];
assign req_word_offset = req_offset[3:2];

// Cache存储器 - 使用寄存器实现
reg [TAG_WIDTH-1:0]     tag_ram     [WAYS-1:0][SETS-1:0];
reg                     valid_ram   [WAYS-1:0][SETS-1:0];
reg [31:0]              data_ram    [WAYS-1:0][SETS-1:0][WORDS_PER_BLOCK-1:0];
reg                     lru_ram     [SETS-1:0];           // LRU位，0表示way0最近使用，1表示way1最近使用

// 内部信号
reg  [TAG_WIDTH-1:0]    tag_read    [WAYS-1:0];
reg                     valid_read  [WAYS-1:0];
reg  [31:0]             data_read   [WAYS-1:0][WORDS_PER_BLOCK-1:0];
reg                     lru_read;

wire                    way0_hit, way1_hit;
wire                    cache_hit;
wire                    hit_way;
reg                     replace_way;

reg  [INDEX_WIDTH-1:0]  req_index_r;
reg  [TAG_WIDTH-1:0]    req_tag_r;
reg  [1:0]              req_word_offset_r;

// 重填相关信号
reg  [1:0]              refill_count;

// Cache命中判断
assign way0_hit = valid_read[0] && (tag_read[0] == req_tag_r);
assign way1_hit = valid_read[1] && (tag_read[1] == req_tag_r);
assign cache_hit = way0_hit || way1_hit;
assign hit_way = way1_hit; // 0表示way0命中，1表示way1命中

// AXI接口固定信号(指令缓存只读)
assign axi_wr = 1'b0;
assign axi_wstrb = 4'b0000;
assign axi_size = 2'b10;  // 4字节访问
assign axi_wdata = 32'b0;

// 主状态机
always @(posedge clk) begin
    if (!resetn) begin
        state <= IDLE;
    end else begin
        if (state != next_state) begin
            $display("ICACHE_STATE [%t]: %d -> %d", $time, state, next_state);
        end
        state <= next_state;
    end
end

always @(*) begin
    case (state)
        IDLE: begin
            if (cpu_req) 
                next_state = LOOKUP;
            else
                next_state = IDLE;
        end
        
        LOOKUP: begin
            if (cache_hit)
                next_state = IDLE;
            else
                next_state = MISS;
        end
        
        MISS: begin
            next_state = REPLACE;
        end
        
        REPLACE: begin
            next_state = REFILL;
        end
        
        REFILL: begin
            if (axi_data_ok && refill_count == (req_word_offset_r + 2'b11))
                next_state = IDLE;
            else
                next_state = REFILL;
        end
        
        default: next_state = IDLE;
    endcase
end

// 读取Cache数据（同步访问）
always @(posedge clk) begin
    if (!resetn) begin
        // 不需要初始化所有数组，复位时valid全为0即可
    end else if (state == IDLE && cpu_req) begin
        // 同步读取Tag和Data
        tag_read[0] <= tag_ram[0][req_index];
        tag_read[1] <= tag_ram[1][req_index];
        valid_read[0] <= valid_ram[0][req_index];
        valid_read[1] <= valid_ram[1][req_index];
        
        data_read[0][0] <= data_ram[0][req_index][0];
        data_read[0][1] <= data_ram[0][req_index][1];
        data_read[0][2] <= data_ram[0][req_index][2];
        data_read[0][3] <= data_ram[0][req_index][3];
        
        data_read[1][0] <= data_ram[1][req_index][0];
        data_read[1][1] <= data_ram[1][req_index][1];
        data_read[1][2] <= data_ram[1][req_index][2];
        data_read[1][3] <= data_ram[1][req_index][3];
        
        lru_read <= lru_ram[req_index];
        
        // 保存请求信息
        req_index_r <= req_index;
        req_tag_r <= req_tag;
        req_word_offset_r <= req_word_offset;
        
        // 调试输出 - 显示CPU请求信息
        $display("ICACHE_REQ [%t]: addr=0x%08x, tag=0x%05x, index=0x%02x, word=%d", 
                $time, cpu_addr, req_tag, req_index, req_word_offset);
    end
end

// 替换路选择（LRU策略）
always @(*) begin
    if (!valid_read[0])
        replace_way = 1'b0;      // way0无效，选择way0
    else if (!valid_read[1])
        replace_way = 1'b1;      // way1无效，选择way1
    else
        replace_way = ~lru_read; // 选择最久未使用的路
end

// Cache写入和LRU更新
always @(posedge clk) begin
    if (!resetn) begin
        // 初始化valid位和数据
        for (i = 0; i < WAYS; i = i + 1) begin
            for (j = 0; j < SETS; j = j + 1) begin
                valid_ram[i][j] <= 1'b0;
                tag_ram[i][j] <= {TAG_WIDTH{1'b0}};
                data_ram[i][j][0] <= 32'b0;
                data_ram[i][j][1] <= 32'b0;
                data_ram[i][j][2] <= 32'b0;
                data_ram[i][j][3] <= 32'b0;
            end
        end
        for (j = 0; j < SETS; j = j + 1) begin
            lru_ram[j] <= 1'b0;
        end
    end else begin
        // Cache命中时更新LRU
        if (state == LOOKUP && cache_hit) begin
            lru_ram[req_index_r] <= hit_way;
        end
        
        // Cache重填时写入数据
        if (state == REFILL && axi_data_ok) begin
            data_ram[replace_way][req_index_r][refill_count] <= axi_rdata;
            
            // 重填完成时更新tag、valid和LRU
            if (refill_count == 2'b11) begin
                tag_ram[replace_way][req_index_r] <= req_tag_r;
                valid_ram[replace_way][req_index_r] <= 1'b1;
                lru_ram[req_index_r] <= replace_way;
            end
        end
    end
end

// 重填计数器
always @(posedge clk) begin
    if (!resetn) begin
        refill_count <= 2'b00;
    end else if (state == REPLACE) begin
        refill_count <= req_word_offset_r; // 从请求的字开始
    end else if (state == REFILL && axi_data_ok) begin
        refill_count <= refill_count + 1'b1;
    end
end

// CPU接口控制
always @(posedge clk) begin
    if (!resetn) begin
        cpu_addr_ok <= 1'b0;
        cpu_data_ok <= 1'b0;
        cpu_rdata <= 32'b0;
        axi_req <= 1'b0;
        axi_addr <= 32'b0;
    end else begin
        case (state)
            IDLE: begin
                cpu_data_ok <= 1'b0;
                axi_req <= 1'b0;
                if (cpu_req) begin
                    cpu_addr_ok <= 1'b1;
                    $display("ICACHE_CPU_HANDSHAKE [%t]: req=1, addr_ok=1, addr=0x%08x", $time, cpu_addr);
                end else begin
                    cpu_addr_ok <= 1'b0;
                end
            end
            
            LOOKUP: begin
                cpu_addr_ok <= 1'b0;
                if (cache_hit) begin
                    cpu_data_ok <= 1'b1;
                    if (hit_way == 1'b0) begin
                        cpu_rdata <= data_read[0][req_word_offset_r];
                        $display("ICACHE_HIT [%t]: way0, addr=0x%08x, data=0x%08x", 
                                $time, {req_tag_r, req_index_r, req_word_offset_r, 2'b00}, 
                                data_read[0][req_word_offset_r]);
                        $display("ICACHE_CPU_DATA [%t]: data_ok=1, rdata=0x%08x, hit_way=0", 
                                $time, data_read[0][req_word_offset_r]);
                    end else begin
                        cpu_rdata <= data_read[1][req_word_offset_r];
                        $display("ICACHE_CPU_DATA [%t]: data_ok=1, rdata=0x%08x, hit_way=1", 
                                $time, data_read[1][req_word_offset_r]);
                        $display("ICACHE_HIT [%t]: way1, addr=0x%08x, data=0x%08x", 
                                $time, {req_tag_r, req_index_r, req_word_offset_r, 2'b00}, 
                                data_read[1][req_word_offset_r]);
                    end
                end
            end
            
            MISS: begin
                cpu_addr_ok <= 1'b0;
                cpu_data_ok <= 1'b0;
            end
            
            REPLACE: begin
                cpu_addr_ok <= 1'b0;
                cpu_data_ok <= 1'b0;
                axi_req <= 1'b1;
                // 首先请求CPU需要的字，然后再填充其他字
                axi_addr <= {req_tag_r, req_index_r, req_word_offset_r, 2'b00};
                $display("ICACHE_REPLACE [%t]: start refill, first_addr=0x%08x, req_word=%d", 
                        $time, {req_tag_r, req_index_r, req_word_offset_r, 2'b00}, req_word_offset_r);
            end
            
            REFILL: begin
                // 在REFILL状态期间，CPU接口保持等待状态
                cpu_addr_ok <= 1'b0;
                
                if (axi_data_ok) begin
                    $display("ICACHE_REFILL [%t]: addr=0x%08x, word=%d, data=0x%08x, req_word=%d", 
                            $time, {req_tag_r, req_index_r, refill_count, 2'b00}, 
                            refill_count, axi_rdata, req_word_offset_r);
                    
                    // 如果是请求的字，立即返回给CPU
                    if (refill_count == req_word_offset_r) begin
                        cpu_data_ok <= 1'b1;
                        cpu_rdata <= axi_rdata;
                        $display("ICACHE_REFILL_HIT [%t]: returning requested word to CPU", $time);
                        $display("ICACHE_CPU_DATA [%t]: data_ok=1, rdata=0x%08x (from refill)", 
                                $time, axi_rdata);
                    end else begin
                        cpu_data_ok <= 1'b0;  // 确保非请求字时data_ok为0
                    end
                    
                    // 检查是否完成了一个完整的cache行重填
                    if (refill_count == (req_word_offset_r + 2'b11)) begin
                        axi_req <= 1'b0;
                    end else begin
                        // 继续下一个字的请求
                        axi_req <= 1'b1;
                        axi_addr <= {req_tag_r, req_index_r, refill_count + 1'b1, 2'b00};
                    end
                end else if (axi_addr_ok) begin
                    // 地址握手后暂停请求，等待数据
                    axi_req <= 1'b0;
                end
            end
        endcase
    end
end

endmodule 