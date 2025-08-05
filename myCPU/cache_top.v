`include "defines.v"
module cache
#(
    parameter HIT_WD       = 2,
    parameter LRU_WD       = 1,
    parameter CACHELINE_WD = 512
)
(
    input wire         clk,
    input wire         rst,
    input wire         sram_en,
    input wire  [ 3:0] sram_wen,
    input wire  [31:0] sram_addr,
    input wire  [31:0] sram_wdata,
    input wire         refresh,
    input wire         cached,
    input wire  [CACHELINE_WD -1:0] cacheline_new,
    
    output wire        addr_ok,
    output wire        data_ok,
    output wire [31:0] sram_rdata,
    output wire        miss,
    output wire [31:0] raddr,
    output wire [31:0] waddr,
    output wire        write_back,
    output wire [CACHELINE_WD -1:0] cacheline_old
);

    wire [HIT_WD       -1:0] hit;
    wire [LRU_WD       -1:0] lru;
    assign addr_ok=~miss & sram_en & cached;
    reg addr_ok_r;
    always@(posedge clk) begin
        if(rst)begin
            addr_ok_r<=1'b0;
        end
        else begin
            addr_ok_r<=addr_ok;
        end 
    end
    assign data_ok = addr_ok_r;

     reg [31:0] cache_raddr;
     reg        cache_raddr_valid;
     wire [31:0] selected_addr = cache_raddr_valid ? cache_raddr : sram_addr;

        always @(posedge clk) begin
        if (rst) begin
            cache_raddr       <= 32'h0;
            cache_raddr_valid <= 1'b0;
        end else if (refresh) begin
            cache_raddr       <= 32'h0;
            cache_raddr_valid <= 1'b0;
        end else if (miss && !cache_raddr_valid) begin
            cache_raddr       <= sram_addr;
            cache_raddr_valid <= 1'b1;
        end
    end

    cache_tag u_cache_tag(
    	.clk        (clk             ),
        .rst        (rst             ),
        .flush      (1'b0            ),
        .cached     (cached          ),
        .sram_en    (sram_en         ),
        .sram_wen   (sram_wen        ),
        .sram_addr  (selected_addr   ),
        .refresh    (refresh         ),
        .miss       (miss            ),
        .axi_raddr  (raddr           ),
        .write_back (write_back      ),
        .axi_waddr  (waddr           ),
        .hit        (hit             ),
        .lru        (lru             )
    );

    cache_data u_cache_data(
    	.clk           (clk             ),
        .rst           (rst             ),
        .write_back    (write_back      ),
        .hit           (hit             ),
        .lru           (lru             ),
        .cached        (cached          ),
        .sram_en       (sram_en         ),
        .sram_wen      (sram_wen        ),
        .sram_addr     (selected_addr   ),
        .sram_wdata    (sram_wdata      ),
        .sram_rdata    (sram_rdata      ),
        .refresh       (refresh         ),
        .cacheline_new (cacheline_new   ),
        .cacheline_old (cacheline_old   ) 
    );

endmodule