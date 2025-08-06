`include "defines.v"

module csr 
#(
	parameter TLBNUM = 32
)
(
    input                           clk          ,
    input                           resetn        ,

    //bus
    output wire [ `CSR_TO_IF_WD] csr_to_if_bus   ,
    output wire [ `CSR_TO_ID_WD] csr_to_id_bus   ,
    output wire [`CSR_TO_EXE_WD] csr_to_exe_bus  ,
    
    input  wire [ `ID_TO_CSR_WD] id_to_csr_bus  ,
    input  wire [ `WB_TO_CSR_WD] wb_to_csr_bus  ,
    //interrupt
    input  [ 7:0]                   interrupt    , // 外设硬中断源
    input                           excp_flush   , 
    //from wb
    input                           ertn_flush   ,  // ertn异常返回指令触发的流水线冲刷信号
    input                           tlbsrch_en    ,
    input                           tlbsrch_found ,
    input  [ 4:0]                   tlbsrch_index ,
    input                           excp_tlbrefill, //TLB重填异常触发标志（硬件或软件触发的TLB缺失异常）
    input                           excp_tlb     ,
    input  [18:0]                   excp_tlb_vppn,
    //from wb llbit
    input                           llbit_in     ,
    input                           llbit_set_in ,
    input  [27:0]                   lladdr_in    ,
    input                           lladdr_set_in,
    //to exe
    output                          llbit_out    ,
    output [18:0]                   vppn_out     ,
    //to mem
    output [27:0]                   lladdr_out   ,
    //to if

    output [31:0]                   tlbrentry_out, //u
    output                          disable_cache_out, //u
    //to addr trans
    output [ 9:0]                   asid_out     ,
    output [ 4:0]                   rand_index   ,
    output [31:0]                   tlbehi_out   ,
    output [31:0]                   tlbelo0_out  ,
    output [31:0]                   tlbelo1_out  ,
    output [31:0]                   tlbidx_out   ,
    output                          pg_out       ,
    output                          da_out       ,
    output [31:0]                   dmw0_out     ,
    output [31:0]                   dmw1_out     ,
    output [ 1:0]                   datf_out     ,
    output [ 1:0]                   datm_out     ,
    output [ 5:0]                   ecode_out    ,
    //from addr trans 
    input                           tlbrd_en     ,
    input  [31:0]                   tlbehi_in    ,
    input  [31:0]                   tlbelo0_in   ,
    input  [31:0]                   tlbelo1_in   ,
    input  [31:0]                   tlbidx_in    ,
    input  [ 9:0]                   asid_in      ,
    //general use
    output [ 1:0]                   plv_out      //在csr id bus里面多传了一份
);

//======================================================
//======== Parameter and Internal signals ==========
//======================================================

wire reset ;
assign reset = ~resetn;
//csr寄存器地址
localparam CRMD  = 14'h0;
localparam PRMD  = 14'h1;
localparam ECTL  = 14'h4;
localparam ESTAT = 14'h5;
localparam ERA   = 14'h6;
localparam BADV  = 14'h7;
localparam EENTRY = 14'hc;
localparam TLBIDX= 14'h10;
localparam TLBEHI= 14'h11;
localparam TLBELO0=14'h12;
localparam TLBELO1=14'h13;
localparam ASID  = 14'h18;
localparam PGDL  = 14'h19;
localparam PGDH  = 14'h1a;
localparam PGD   = 14'h1b;
localparam CPUID = 14'h20; //这个ID疑似可以自由发挥
localparam SAVE0 = 14'h30;
localparam SAVE1 = 14'h31;
localparam SAVE2 = 14'h32;
localparam SAVE3 = 14'h33;
localparam TID   = 14'h40;
localparam TCFG  = 14'h41;
localparam TVAL  = 14'h42;
localparam CNTC  = 14'h43;
localparam TICLR = 14'h44;
localparam LLBCTL= 14'h60;
localparam TLBRENTRY = 14'h88;
localparam DMW0  = 14'h180;
localparam DMW1  = 14'h181;
localparam BRK = 14'h100;
localparam DISABLE_CACHE = 14'h101;
localparam CPUCFG_1  = 14'hb1;
localparam CPUCFG_2  = 14'hb2;
localparam CPUCFG_10 = 14'hc0;
localparam CPUCFG_11 = 14'hc1;
localparam CPUCFG_12 = 14'hc2;
localparam CPUCFG_13 = 14'hc3;

reg [31:0] csr_crmd;  //0x0 当前模式信息
reg [31:0] csr_prmd;  //1 例外前模式信息
                      //2 扩展部件使能 euen
reg [31:0] csr_ectl;  //例外控制寄存器 |4 ecfg
  //12:0 中断使能 对应13个中断源
  //16:13 TLB重填控制
  //31:17 保留
reg [31:0] csr_estat; //5 例外状态
reg [31:0] csr_era; //6 例外返回地址
reg [31:0] csr_badv; //7 出错虚拟地址
reg [31:0] csr_eentry; //c 例外入口地址
reg [31:0] csr_tlbidx; //10 TLB索引
reg [31:0] csr_tlbehi;
reg [31:0] csr_tlbelo0;
reg [31:0] csr_tlbelo1;
reg [31:0] csr_asid;
reg [31:0] csr_cpuid;
reg [31:0] csr_save0; //0x30-0x33 数据保存
reg [31:0] csr_save1;
reg [31:0] csr_save2;
reg [31:0] csr_save3;
reg [31:0] csr_tid; //定时器id
reg [31:0] csr_tcfg; //定时器配置
reg [31:0] csr_tval; //定时器值
reg [31:0] csr_cntc;
reg [31:0] csr_ticlr; //定时器中断清除
reg [31:0] csr_llbctl;
reg [31:0] csr_tlbrentry;
reg [31:0] csr_dmw0;
reg [31:0] csr_dmw1;
reg [31:0] csr_pgdl;
reg [31:0] csr_pgdh;
reg [31:0] csr_brk;
reg [31:0] csr_disable_cache;
reg [31:0] csr_cpucfg1;
reg [31:0] csr_cpucfg2;
reg [31:0] csr_cpucfg10;
reg [31:0] csr_cpucfg11;
reg [31:0] csr_cpucfg12;
reg [31:0] csr_cpucfg13;

wire [31:0] csr_pgd;  // 动态页表基址选择器

reg        timer_en;  // 定时器使能控制
reg [63:0] timer_64;  // 64位计数器

//跟csrxchg有关
//原子操作支持 ll/sc
reg        llbit;   // Load-Linked状态标志
reg [27:0] lladdr;  // 链接内存地址记录

//TLB相关
wire tlbrd_valid_wr_en; // TLB有效项读取使能
wire tlbrd_invalid_wr_en; // TLB无效项读取使能

wire eret_tlbrefill_excp; // ERTN指令返回时遇到的TLB重填异常

//状态转发控制
wire no_forward;  // 1:允许转发当前状态，0:不允许


//bus总线io信号
//if
wire [31:0]                   eentry_out   ;
wire [31:0]                   era_out      ; // 异常返回地址输出
//from to id 
wire [13:0]                   rd_addr      ;
wire [31:0]                   rd_data      ;

//timer 64
wire [63:0]                   timer_64_out ;
wire [31:0]                   tid_out      ;

wire                          has_int      ;

wire  [31:0]                  era_in      ;  // 异常返回地址输入
wire  [ 8:0]                  esubcode_in ;
wire  [ 5:0]                  ecode_in    ;
wire                          va_error_in ;
wire  [31:0]                  bad_va_in   ;

wire                          csr_wr_en       ;
wire  [13:0]                  wr_addr     ;
wire  [31:0]                  wr_data     ;


//out bus
assign csr_to_if_bus = {
    plv_out, //2
    datf_out,   //2 
    da_out, //1
    pg_out, //1
    dmw1_out, //32
    dmw0_out, //32

    era_in,
    eentry_out,
    era_out   
};

assign csr_to_id_bus = {
    timer_64_out,
    tid_out,

    rd_data,
    plv_out,
    has_int
};

assign csr_to_exe_bus = {
    plv_out, //2
    datm_out,   //2 
    da_out, //1
    pg_out, //1
    dmw1_out, //32
    dmw0_out //32
};

//in bus
assign {
    rd_addr
} = id_to_csr_bus;

assign {
  era_in     , //32
  esubcode_in, //9
  ecode_in   , //6
  csr_wr_en   , //1
  wr_addr , //14
  wr_data , //32
  va_error_in    , //1
  bad_va_in        // 32
} = wb_to_csr_bus;


wire crmd_wen   = csr_wr_en & (wr_addr == CRMD);
wire prmd_wen   = csr_wr_en & (wr_addr == PRMD);
wire ectl_wen   = csr_wr_en & (wr_addr == ECTL);
wire estat_wen  = csr_wr_en & (wr_addr == ESTAT);
wire era_wen    = csr_wr_en & (wr_addr == ERA);
wire badv_wen   = csr_wr_en & (wr_addr == BADV);
wire eentry_wen = csr_wr_en & (wr_addr == EENTRY);
wire tlbidx_wen = csr_wr_en & (wr_addr == TLBIDX);
wire tlbehi_wen = csr_wr_en & (wr_addr == TLBEHI);
wire tlbelo0_wen= csr_wr_en & (wr_addr == TLBELO0);
wire tlbelo1_wen= csr_wr_en & (wr_addr == TLBELO1);
wire asid_wen   = csr_wr_en & (wr_addr == ASID);
wire pgdl_wen   = csr_wr_en & (wr_addr == PGDL);
wire pgdh_wen   = csr_wr_en & (wr_addr == PGDH);
wire pgd_wen    = csr_wr_en & (wr_addr == PGD);
wire cpuid_wen  = csr_wr_en & (wr_addr == CPUID);
wire save0_wen  = csr_wr_en & (wr_addr == SAVE0);
wire save1_wen  = csr_wr_en & (wr_addr == SAVE1);
wire save2_wen  = csr_wr_en & (wr_addr == SAVE2);
wire save3_wen  = csr_wr_en & (wr_addr == SAVE3);
wire tid_wen    = csr_wr_en & (wr_addr == TID);
wire tcfg_wen   = csr_wr_en & (wr_addr == TCFG);
wire tval_wen   = csr_wr_en & (wr_addr == TVAL);
wire cntc_wen   = csr_wr_en & (wr_addr == CNTC);
wire ticlr_wen  = csr_wr_en & (wr_addr == TICLR);
wire llbctl_wen = csr_wr_en & (wr_addr == LLBCTL);
wire tlbrentry_wen = csr_wr_en & (wr_addr == TLBRENTRY);
wire DMW0_wen   = csr_wr_en & (wr_addr == DMW0);
wire DMW1_wen   = csr_wr_en & (wr_addr == DMW1);
wire BRK_wen    = csr_wr_en & (wr_addr == BRK);
wire disable_cache_wen = csr_wr_en & (wr_addr == DISABLE_CACHE);


//======================================================
//=================== Main Code ====================
//======================================================

//根据虚拟地址最高位动态选择页表基址 MMU进行虚实地址转换时的基址计算
//csr_badv[31]为1表示发生地址错误，PGDH（高位页目录），否则用低
assign csr_pgd = csr_badv[31] ? csr_pgdh : csr_pgdl;

assign eret_tlbrefill_excp = csr_estat[`ECODE] == 6'h3f;

//有效读取：将TLB条目内容写入TLBEHI/TLBELO等CSR
assign tlbrd_valid_wr_en   = tlbrd_en && !tlbidx_in[`NE];
//无效读取：清空相关CSR的V位
assign tlbrd_invalid_wr_en = tlbrd_en &&  tlbidx_in[`NE];

assign has_int = ((csr_ectl[`LIE] & csr_estat[`IS]) != 13'b0) & csr_crmd[`IE];

assign eentry_out   = csr_eentry;
assign era_out      = csr_era;
assign timer_64_out = timer_64 + {{32{csr_cntc[31]}}, csr_cntc};
assign tid_out      = csr_tid;
assign llbit_out    = llbit;
assign lladdr_out   = lladdr;
assign asid_out     = csr_asid[`TLB_ASID];
assign vppn_out     = (csr_wr_en && wr_addr == TLBEHI) ? wr_data[`VPPN] : csr_tlbehi[`VPPN];
assign tlbehi_out   = csr_tlbehi;
assign tlbelo0_out  = csr_tlbelo0;
assign tlbelo1_out  = csr_tlbelo1;
assign tlbidx_out   = csr_tlbidx;
assign rand_index   = timer_64[4:0];
assign disable_cache_out = csr_disable_cache[0];

// forward to if stage
// 未发生TLB重填异常 且 非（ETRN触发TLB重填且要冲刷流水线）且 不写CRMD
assign no_forward   = !excp_tlbrefill && !(eret_tlbrefill_excp && ertn_flush) && !crmd_wen;

//CRMD内部
//分页模式使能          //TLB重填异常->强制关闭分页
assign pg_out       = excp_tlbrefill & 1'b0                      |
                      //ERTN触发TLB重填->强制开启分页
                      (eret_tlbrefill_excp && ertn_flush) & 1'b1 |
                      //CRMD寄存器写入->采用新写入值
                      crmd_wen       & wr_data[`PG]              |
                      //正常操作->保持当前状态
                      no_forward     & csr_crmd[`PG];

//直接地址翻译模式使能
assign da_out       = excp_tlbrefill & 1'b1                      |
                      (eret_tlbrefill_excp && ertn_flush) & 1'b0 |
                      crmd_wen       & wr_data[`DA]              |
                      no_forward     & csr_crmd[`DA];

//直接映射窗口（DMW）
assign dmw0_out     = DMW0_wen ? wr_data : csr_dmw0;
assign dmw1_out     = DMW1_wen ? wr_data : csr_dmw1;

//特权级控制信号
//excp ertn crmd 默认:优先级递减
assign plv_out      = {2{excp_flush}} & 2'b0            | //异常处理
                      {2{ertn_flush}} & csr_prmd[`PPLV] | //异常返回
                      {2{crmd_wen  }} & wr_data[`PLV]   | //寄存器写入
                      {2{!excp_flush && !ertn_flush && !crmd_wen}} & csr_crmd[`PLV]; //默认情况

//TLB重填入口地址：低6位固定为0（地址对齐要求），由操作系统初始化时配置，硬件在TLB重填异常时自动跳转至此地址
assign tlbrentry_out= csr_tlbrentry;
//数据访问类型控制信号
assign datf_out     = csr_crmd[`DATF];  // 数据访问类型-前端控制
assign datm_out     = csr_crmd[`DATM];  // 数据访问类型-内存控制

//异常编码信号
assign ecode_out    = csr_estat[`ECODE];

assign rd_data = {32{rd_addr == CRMD  }}  & csr_crmd    |
                 {32{rd_addr == PRMD  }}  & csr_prmd    |
                 {32{rd_addr == ECTL  }}  & csr_ectl    |
                 {32{rd_addr == ESTAT }}  & csr_estat   |
                 {32{rd_addr == ERA   }}  & csr_era	    |
                 {32{rd_addr == BADV  }}  & csr_badv    |
                 {32{rd_addr == EENTRY}}  & csr_eentry  |
                 {32{rd_addr == TLBIDX}}  & csr_tlbidx  |
                 {32{rd_addr == TLBEHI}}  & csr_tlbehi  |
                 {32{rd_addr == TLBELO0}} & csr_tlbelo0 |
                 {32{rd_addr == TLBELO1}} & csr_tlbelo1 |
                 {32{rd_addr == ASID  }}  & csr_asid    |
                 {32{rd_addr == PGDL  }}  & csr_pgdl    |
                 {32{rd_addr == PGDH  }}  & csr_pgdh    |
                 {32{rd_addr == PGD   }}  & csr_pgd     |
                 {32{rd_addr == CPUID }}  & csr_cpuid   |
                 {32{rd_addr == SAVE0 }}  & csr_save0   |
                 {32{rd_addr == SAVE1 }}  & csr_save1   |
                 {32{rd_addr == SAVE2 }}  & csr_save2   |
                 {32{rd_addr == SAVE3 }}  & csr_save3   |
                 {32{rd_addr == TID   }}  & csr_tid     |
                 {32{rd_addr == TCFG  }}  & csr_tcfg    |
                 {32{rd_addr == CNTC  }}  & csr_cntc    |
                 {32{rd_addr == TICLR }}  & csr_ticlr   |
                 {32{rd_addr == LLBCTL}}  & {csr_llbctl[31:1], llbit} |
                 {32{rd_addr == TVAL  }}  & csr_tval    |
                 {32{rd_addr == TLBRENTRY}} & csr_tlbrentry   |
                 {32{rd_addr == DMW0}}    & csr_dmw0    |
                 {32{rd_addr == DMW1}}    & csr_dmw1    |
                 {32{rd_addr == CPUCFG_1 }}   & csr_cpucfg1    |
                 {32{rd_addr == CPUCFG_2 }}   & csr_cpucfg2    |
                 {32{rd_addr == CPUCFG_10 }}  & csr_cpucfg10   |
                 {32{rd_addr == CPUCFG_11 }}  & csr_cpucfg11   |
                 {32{rd_addr == CPUCFG_12 }}  & csr_cpucfg12   |
                 {32{rd_addr == CPUCFG_13 }}  & csr_cpucfg13   ;


//crmd
always @(posedge clk) begin
    if (reset) begin
        csr_crmd[ `PLV] <=  2'b0;
        csr_crmd[  `IE] <=  1'b0;
        csr_crmd[  `DA] <=  1'b1;
        csr_crmd[  `PG] <=  1'b0;
        csr_crmd[`DATF] <=  2'b0;
        csr_crmd[`DATM] <=  2'b0;
        csr_crmd[31: 9] <= 23'b0;
    end
    //异常处理
    else if (excp_flush) begin
        csr_crmd[ `PLV] <=  2'b0;
        csr_crmd[  `IE] <=  1'b0;
        if (excp_tlbrefill) begin
            csr_crmd [`DA] <= 1'b1;
            csr_crmd [`PG] <= 1'b0;
        end
    end
    //异常返回
    else if (ertn_flush) begin
        csr_crmd[ `PLV] <= csr_prmd[`PPLV];
        csr_crmd[  `IE] <= csr_prmd[`PIE ];
        //ERET返回时需要同时恢复DA/PG位
        if (eret_tlbrefill_excp) begin
            //地址翻译模式切换
            csr_crmd[`DA] <= 1'b0;
            csr_crmd[`PG] <= 1'b1;
        end
    end 
    //寄存器写入
    else if (crmd_wen) begin
        csr_crmd[ `PLV] <= wr_data[ `PLV];
        csr_crmd[  `IE] <= wr_data[	 `IE];
        csr_crmd[  `DA] <= wr_data[	 `DA];
        csr_crmd[  `PG] <= wr_data[  `PG];
        csr_crmd[`DATF] <= wr_data[`DATF];
        csr_crmd[`DATM] <= wr_data[`DATM];
    end
end

//prmd
//csr_prmd[31:3] 未使用，强制保持为0
//csr_prmd[ `PIE] 2 异常前全局中断使能状态
//csr_prmd[`PPLV] 1:0 异常前特权级别
always @(posedge clk) begin
    if (reset) begin
        // csr_prmd[31:3] <= 29'b0;
        csr_prmd<=32'b0;
    end
    //异常处理
    else if (excp_flush) begin
        csr_prmd[`PPLV] <= csr_crmd[`PLV];  // 保存当前特权级
        csr_prmd[ `PIE] <= csr_crmd[`IE ];  // 保存中断使能状态
    end
    //寄存器写入
    else if (prmd_wen) begin
        csr_prmd[`PPLV] <= wr_data[`PPLV];
        csr_prmd[ `PIE] <= wr_data[ `PIE];
    end
end

//ectl
//LIE_1 = 12：0  局部中断使能组1（13个中断源）
//LIE_2 = 31：16 局部中断使能组2（16个中断源）
//15：13 保留字段
always @(posedge clk) begin
    if (reset) begin
        csr_ectl <= 32'b0;
    end
    else if (ectl_wen) begin
        csr_ectl[ `LIE_1] <= wr_data[ `LIE_1];
        csr_ectl[ `LIE_2] <= wr_data[ `LIE_2];
    end
end

//estat
//10, 15:13, 31 保留
//IS[11:0] 11:0
//IS[1:0] 两个软中断的状态位
//IS[9:2] 八个硬中断状态位
//IS[11] 定时器中断状态位
//IS[12] 核间中断(IPI)状态位
//ECode 21:16 异常主类型编码
//ESubCode 30:22 异常子类型编码

always @(posedge clk) begin
    if (reset) begin
        // csr_estat[1:0] <= 2'b0; 
        // csr_estat[10]    <= 1'b0;
        // csr_estat[12]    <= 1'b0;
        // csr_estat[15:13] <= 3'b0;
        // csr_estat[31]    <= 1'b0;
        csr_estat<=32'b0;
        
        timer_en <= 1'b0; //定时器禁用
    end
    else begin
        //定时器中断清除
        if (ticlr_wen && wr_data[`CLR]) begin
            csr_estat[11] <= 1'b0;
        end
        //定时器配置更新
        else if (tcfg_wen) begin
            timer_en <= wr_data[`EN];
        end
        //定时器计数到0处理
        else if (timer_en && (csr_tval == 32'b0)) begin
            csr_estat[11] <= 1'b1; //时钟中断
            timer_en      <= csr_tcfg[`PERIODIC]; // 自动重装载配置
        end
      //中断状态更新
        csr_estat[9:2] <= interrupt; // 直接映射外部中断信号
        //异常编码记录
        if (excp_flush) begin
            csr_estat[   `ECODE] <= ecode_in; // 记录异常主编码
            csr_estat[`ESUBCODE] <= esubcode_in; // 记录异常子编码
        end
        //寄存器写入
        else if (estat_wen) begin
            csr_estat[1:0] <= wr_data[1:0]; // 允许修改保留位（需注意规范限制）
        end
    end
end

//era
always @(posedge clk) begin
    if (reset) begin
        csr_era <= 32'b0;
    end
    else if (excp_flush) begin
        csr_era <= era_in;
    end
    else if (era_wen) begin
        csr_era <= wr_data;
    end
end

//badv 出错虚地址
//触发地址错误相关例外时，记录出错的虚地址
always @(posedge clk) begin
    if (reset) begin
        csr_badv <= 32'b0;
    end
    else if (badv_wen) begin
        csr_badv <= wr_data;
    end
    else if (va_error_in) begin
        csr_badv <= bad_va_in;
    end
end

//eentry
always @(posedge clk) begin
    if (reset) begin
        csr_eentry <= 32'b0;
    end
    else if (eentry_wen) begin
        csr_eentry[31:6] <= wr_data[31:6];
    end
end

//tlbidx
always @(posedge clk) begin
    if (reset) begin
        // csr_tlbidx[23: 5] <= 19'b0;
        // csr_tlbidx[30]    <= 1'b0;
		// csr_tlbidx[`INDEX]<= 5'b0;
        csr_tlbidx <= 32'b0;
    end
    else if (tlbidx_wen) begin
		csr_tlbidx[$clog2(TLBNUM)-1:0] <= wr_data[$clog2(TLBNUM)-1:0];
        csr_tlbidx[`PS]    <= wr_data[`PS];
        csr_tlbidx[`NE]    <= wr_data[`NE];
    end
    else if (tlbsrch_en) begin
        if (tlbsrch_found) begin
            csr_tlbidx[`INDEX] <= tlbsrch_index;
            csr_tlbidx[`NE]    <= 1'b0;
        end
        else begin
            csr_tlbidx[`NE] <= 1'b1;
        end
    end
    else if (tlbrd_valid_wr_en) begin
        csr_tlbidx[`PS] <= tlbidx_in[`PS];
        csr_tlbidx[`NE] <= tlbidx_in[`NE];
    end
    else if (tlbrd_invalid_wr_en) begin
        csr_tlbidx[`PS] <= 6'b0;
        csr_tlbidx[`NE] <= tlbidx_in[`NE];
    end
end

//tlbehi
always @(posedge clk) begin
    if (reset) begin
        // csr_tlbehi[12:0] <= 13'b0;
        csr_tlbehi <= 32'b0;
    end
    else if (tlbehi_wen) begin
        csr_tlbehi[`VPPN] <= wr_data[`VPPN];
    end
    else if (tlbrd_valid_wr_en) begin
        csr_tlbehi[`VPPN] <= tlbehi_in[`VPPN];
    end
    else if (tlbrd_invalid_wr_en) begin
        csr_tlbehi[`VPPN] <= 19'b0;
    end
    else if (excp_tlb) begin
        csr_tlbehi[`VPPN] <= excp_tlb_vppn;
    end
end

//tlbelo0
always @(posedge clk) begin
    if (reset) begin
        // csr_tlbelo0[7] <= 1'b0;
        csr_tlbelo0 <= 32'b0;
    end
    else if (tlbelo0_wen) begin
        csr_tlbelo0[`TLB_V]   <= wr_data[`TLB_V];
        csr_tlbelo0[`TLB_D]   <= wr_data[`TLB_D];
        csr_tlbelo0[`TLB_PLV] <= wr_data[`TLB_PLV];
        csr_tlbelo0[`TLB_MAT] <= wr_data[`TLB_MAT];
        csr_tlbelo0[`TLB_G]   <= wr_data[`TLB_G];
        csr_tlbelo0[`TLB_PPN_EN] <= wr_data[`TLB_PPN_EN];
    end
    else if (tlbrd_valid_wr_en) begin
        csr_tlbelo0[`TLB_V]   <= tlbelo0_in[`TLB_V];
        csr_tlbelo0[`TLB_D]   <= tlbelo0_in[`TLB_D];
        csr_tlbelo0[`TLB_PLV] <= tlbelo0_in[`TLB_PLV];
        csr_tlbelo0[`TLB_MAT] <= tlbelo0_in[`TLB_MAT];
        csr_tlbelo0[`TLB_G]   <= tlbelo0_in[`TLB_G];
        csr_tlbelo0[`TLB_PPN_EN] <= tlbelo0_in[`TLB_PPN_EN];
    end
    else if (tlbrd_invalid_wr_en) begin
        csr_tlbelo0[`TLB_V]   <= 1'b0;
        csr_tlbelo0[`TLB_D]   <= 1'b0;
        csr_tlbelo0[`TLB_PLV] <= 2'b0;
        csr_tlbelo0[`TLB_MAT] <= 2'b0;
        csr_tlbelo0[`TLB_G]   <= 1'b0;
        csr_tlbelo0[`TLB_PPN_EN] <= 20'b0;
    end
end

//tlbelo1
always @(posedge clk) begin
    if (reset) begin
        // csr_tlbelo1[7] <= 1'b0;
        csr_tlbelo1 <= 32'b0;
    end
    else if (tlbelo1_wen) begin
        csr_tlbelo1[`TLB_V]   <= wr_data[`TLB_V];
        csr_tlbelo1[`TLB_D]   <= wr_data[`TLB_D];
        csr_tlbelo1[`TLB_PLV] <= wr_data[`TLB_PLV];
        csr_tlbelo1[`TLB_MAT] <= wr_data[`TLB_MAT];
        csr_tlbelo1[`TLB_G]   <= wr_data[`TLB_G];
        csr_tlbelo1[`TLB_PPN_EN] <= wr_data[`TLB_PPN_EN];
    end
    else if (tlbrd_valid_wr_en) begin
        csr_tlbelo1[`TLB_V]   <= tlbelo1_in[`TLB_V];
        csr_tlbelo1[`TLB_D]   <= tlbelo1_in[`TLB_D];
        csr_tlbelo1[`TLB_PLV] <= tlbelo1_in[`TLB_PLV];
        csr_tlbelo1[`TLB_MAT] <= tlbelo1_in[`TLB_MAT];
        csr_tlbelo1[`TLB_G]   <= tlbelo1_in[`TLB_G];
        csr_tlbelo1[`TLB_PPN_EN] <= tlbelo1_in[`TLB_PPN_EN];
    end
    else if (tlbrd_invalid_wr_en) begin
        csr_tlbelo1[`TLB_V]   <= 1'b0;
        csr_tlbelo1[`TLB_D]   <= 1'b0;
        csr_tlbelo1[`TLB_PLV] <= 2'b0;
        csr_tlbelo1[`TLB_MAT] <= 2'b0;
        csr_tlbelo1[`TLB_G]   <= 1'b0;
        csr_tlbelo1[`TLB_PPN_EN] <= 20'b0;
    end
end

//类似TLB参数，先都设0反正没有TLB
//asid
always @(posedge clk) begin
    if (reset) begin
        // csr_asid[31:10] <= 22'h280; //ASIDBITS = 10
        csr_asid <= 32'b0;
    end
    else if (asid_wen) begin
        csr_asid[`TLB_ASID] <= wr_data[`TLB_ASID];
    end
    else if (tlbrd_valid_wr_en) begin
        csr_asid[`TLB_ASID] <= asid_in;
    end
    else if (tlbrd_invalid_wr_en) begin
        csr_asid[`TLB_ASID] <= 10'b0;
    end
end

//TLBRENTRY
always @(posedge clk) begin
    if (reset) begin
        // csr_tlbrentry[5:0] <= 6'b0;
        csr_tlbrentry <= 32'b0;
    end
    else if (tlbrentry_wen) begin
        csr_tlbrentry[`TLBRENTRY_PA] <= wr_data[`TLBRENTRY_PA];
    end
end

//dmw0
always @(posedge clk) begin
    if (reset) begin
        csr_dmw0<=32'b0;
    end
    else if (DMW0_wen) begin
        csr_dmw0[`PLV0]    <= wr_data[`PLV0];
        csr_dmw0[`PLV3]    <= wr_data[`PLV3];
        csr_dmw0[`DMW_MAT] <= wr_data[`DMW_MAT];
        csr_dmw0[`PSEG]    <= wr_data[`PSEG];
        csr_dmw0[`VSEG]    <= wr_data[`VSEG];
    end
end

//dmw1
always @(posedge clk) begin
    if (reset) begin
        csr_dmw1<=32'b0;
    end
    else if (DMW1_wen) begin
        csr_dmw1[`PLV0]    <= wr_data[`PLV0];
        csr_dmw1[`PLV3]    <= wr_data[`PLV3];
        csr_dmw1[`DMW_MAT] <= wr_data[`DMW_MAT];
        csr_dmw1[`PSEG]    <= wr_data[`PSEG];
        csr_dmw1[`VSEG]    <= wr_data[`VSEG];
    end
end

//cpuid
always @(posedge clk) begin
    if (reset) begin
        csr_cpuid <= 32'b0;
    end 
end

//save0
always @(posedge clk) begin
    if (reset) begin
        csr_save0 <= 32'b0;
    end
    else if (save0_wen) begin
        csr_save0 <= wr_data;
    end 
end

//save1
always @(posedge clk) begin
    if (reset) begin
        csr_save1 <= 32'b0;
    end
    else if (save1_wen) begin
        csr_save1 <= wr_data;
    end 
end

//save2
always @(posedge clk) begin
    if (reset) begin
        csr_save2 <= 32'b0;
    end
    else if (save2_wen) begin
        csr_save2 <= wr_data;
    end 
end

//save3
always @(posedge clk) begin
    if (reset) begin
        csr_save3 <= 32'b0;
    end
    else if (save3_wen) begin
        csr_save3 <= wr_data;
    end 
end

//tid
always @(posedge clk) begin
    if (reset) begin
        csr_tid <= 32'b0;
    end
    else if (tid_wen) begin
        csr_tid <= wr_data;
    end
end

//tcfg
always @(posedge clk) begin
    if (reset) begin
        // csr_tcfg[`EN] <= 1'b0;
        csr_tcfg <= 32'b0;
    end
    else if (tcfg_wen) begin
        csr_tcfg[      `EN] <= wr_data[      `EN];
        csr_tcfg[`PERIODIC] <= wr_data[`PERIODIC];
        csr_tcfg[ `INITVAL] <= wr_data[ `INITVAL];
    end
end

//cntc
always @(posedge clk) begin
    if (reset) begin
        csr_cntc <= 32'b0;
    end
    else if (cntc_wen) begin
        csr_cntc <= wr_data;
    end
end

//tval
always @(posedge clk) begin
    if (reset) begin
        csr_tval <= 32'b0;
    end
    else if (tcfg_wen) begin
        csr_tval <= {wr_data[ `INITVAL], 2'b0};
    end
    else if (timer_en) begin
        if (csr_tval != 32'b0) begin
            csr_tval <= csr_tval - 32'b1;
        end
        //自动重载初始值
        else if (csr_tval == 32'b0) begin
            csr_tval <= csr_tcfg[`PERIODIC] ? {csr_tcfg[`INITVAL], 2'b0} : 32'hffffffff;
        end
    end
end

//ticlr
always @(posedge clk) begin
    if (reset) begin
        csr_ticlr <= 32'b0;
    end
end

//llbctl
always @(posedge clk) begin
    if (reset) begin
        // csr_llbctl[`KLO]   <= 1'b0;
        // csr_llbctl[31:3]   <= 29'b0;
		// csr_llbctl[`WCLLB] <= 1'b0;
        csr_llbctl <= 32'b0;
        llbit <= 1'b0;
    end 
    else if (ertn_flush) begin
        if (csr_llbctl[`KLO]) begin
            csr_llbctl[`KLO] <= 1'b0;
        end
        else begin
            llbit <= 1'b0;
        end
    end
    else if (llbctl_wen) begin 
        csr_llbctl[  `KLO] <= wr_data[  `KLO];
        if (wr_data[`WCLLB] == 1'b1) begin
            llbit <= 1'b0;
        end
    end
    else if (llbit_set_in) begin
        llbit <= llbit_in;
    end
end

always @(posedge clk) begin
    if (reset) begin
        lladdr <= 28'b0;
    end
    else if (lladdr_set_in) begin
        lladdr <= lladdr_in;
    end
end

//timer_64
always @(posedge clk) begin
    if (reset) begin
        timer_64 <= 64'b0;
    end
    else begin
        timer_64 <= timer_64 + 1'b1;
    end
end

//pgdl
always @(posedge clk) begin
    if (reset) begin
        csr_pgdl <= 32'b0;
    end
    else if (pgdl_wen) begin
        csr_pgdl[`BASE] <= wr_data[`BASE];
    end
end

//pgdh
always @(posedge clk) begin
    if (reset) begin
        csr_pgdh <= 32'b0;
    end 
    if (pgdh_wen) begin
        csr_pgdh[`BASE] <= wr_data[`BASE];
    end
end

//use for break in chipscope in software
always @(posedge clk) begin
    if (reset) begin
        csr_brk <= 32'b0;
    end
    if (BRK_wen) begin
        csr_brk <= wr_data;
    end
end

//use for disable cache or enable cache
always @(posedge clk) begin
    if (reset) begin
        csr_disable_cache <= 32'b0;
    end
    if (disable_cache_wen) begin
        csr_disable_cache <= wr_data;
    end
end


//从右往左数
//cpucfg1
always @(posedge clk) begin
    if (reset) begin
        csr_cpucfg1 <= 32'b_00011111_00011111_00_00;
    end 
end

//cpucfg2
always @(posedge clk) begin
    if (reset) begin
        csr_cpucfg2 <= 32'h0;
    end 
end

//cpucfg10
always @(posedge clk) begin
    if (reset) begin
        csr_cpucfg10 <= 32'h0;
    end 
end

//cpucfg11
always @(posedge clk) begin
    if (reset) begin
        csr_cpucfg11 <= 32'h0;
    end 
end

//cpucfg12
always @(posedge clk) begin
    if (reset) begin
        csr_cpucfg12 <= 32'h0;
    end 
end

//cpucfg13
always @(posedge clk) begin
    if (reset) begin
        csr_cpucfg13 <= 32'h0;
    end 
end

endmodule