`include "defines.v"









//======================================================
//======== Parameter and Internal signals ==========
//======================================================
  //模块内部使用的常量使用localparam定义，不能通过模块例化修改
  //使用localparam定义csr寄存器的地址
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
localparam CPUID = 14'h20;
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

wire crmd_wen   = csr_wr_en & (wr_addr == CRMD);












reg [31:0] csr_crmd; //0x0 当前模式信息
reg [31:0] csr_prmd; //1 例外前模式信息
//2 扩展部件使能 euen
//4 例外配置 ecfg
reg [31:0] csr_ectl;
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
reg [31:0] csr_save0;
reg [31:0] csr_save1;
reg [31:0] csr_save2;
reg [31:0] csr_save3;
reg [31:0] csr_tid;
reg [31:0] csr_tcfg;
reg [31:0] csr_tval;
reg [31:0] csr_cntc;
reg [31:0] csr_ticlr;
reg [31:0] csr_llbctl;
reg [31:0] csr_tlbrentry;
reg [31:0] csr_dmw0;
reg [31:0] csr_dmw1;
reg [31:0] csr_pgdl;
reg [31:0] csr_pgdh;
reg [31:0] csr_brk;
reg [31:0] csr_disable_cache;

//======================================================
//=================== Main Code ====================
//======================================================
