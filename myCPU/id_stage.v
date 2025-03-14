`timescale 1ns / 1ps
`include "defines.v"

module id_stage (
    input wire clk,
    input wire resetn,

    //if-id
    output wire id_allowin,
    input wire if_to_id_valid,
    input wire [`IF_TO_ID_WD] if_to_id_bus,

    //id-exe
    input wire exe_allowin,
    output wire id_to_exe_valid,
    output wire [`ID_TO_EXE_WD] id_to_exe_bus,


    //从后向前的数据传输（均是组合逻辑）
    output wire [`ID_TO_IF_WD] id_to_if_bus,

    input wire [`EXE_TO_ID_WD] exe_to_id_bus,
    input wire [`MEM_TO_ID_WD] mem_to_id_bus,
    //wb-rf
    input wire [`WB_TO_RF_WD] wb_to_rf_bus      

);

//======================================================
//======== Parameter and Internal signals ==========
//======================================================

//当前stage控制信号
  reg id_valid;
  wire id_ready_go;

  reg [`IF_TO_ID_WD] id_data;  //id_reg的数据


//if-id
  //拆解if_reg传递过来的数据
  wire [`InstAddrBus] id_pc;
  wire [`InstBus    ] id_inst;
  assign {id_pc, id_inst} = id_data;

//前递和阻塞
//exe-id
  //拆解exe组合逻辑送来的数据
wire        exe_dep_need_stall;
wire        exe_forward_enable;
wire [`RegAddrBus ] exe_forward_reg;
wire [`RegBus     ] exe_forward_data;
assign {exe_dep_need_stall,
        exe_forward_enable, 
        exe_forward_reg   ,
        exe_forward_data
       } = exe_to_id_bus;


//mem-id
  //拆解mem组合逻辑送来的数据
wire        mem_forward_enable;
wire [`RegAddrBus ] mem_forward_reg;
wire [`RegBus     ] mem_forward_data;
wire        mem_dep_need_stall;
assign {mem_dep_need_stall,
        mem_forward_enable, 
        mem_forward_reg   ,
        mem_forward_data
       } = mem_to_id_bus;

wire        rf1_forward_stall; //由寄存器发出的暂停信号（在某些条件下由exe或mem阶段的暂停信号决定）
wire        rf2_forward_stall;

//写回
//wb-rf(id)
  //拆解wb组合逻辑传递过来的数据
wire        rf_we   ;
wire [`RegAddrBus ] rf_waddr;
wire [`RegBus     ] rf_wdata;
assign {rf_we   ,  //37:37
        rf_waddr,  //36:32
        rf_wdata   //31:0
       } = wb_to_rf_bus;

//译码
//指令拆解
wire [ 5:0] op_31_26;
wire [ 3:0] op_25_22;
wire [ 1:0] op_21_20;
wire [ 4:0] op_19_15;
wire [ 4:0] rd;
wire [ 4:0] rj;
wire [ 4:0] rk;
wire [11:0] i12;
wire [13:0] i14;
wire [19:0] i20;
wire [15:0] i16;
wire [25:0] i26;
// wire [13:0] csr_idx;

//译码器译码
wire [63:0] op_31_26_d;
wire [15:0] op_25_22_d;
wire [ 3:0] op_21_20_d;
wire [31:0] op_19_15_d;
//！la500里把rd rj rk也译码了
// wire [31:0] rd_d;
// wire [31:0] rj_d;
// wire [31:0] rk_d;

//指令译码
wire inst_add_w; 
wire inst_sub_w;  
wire inst_slt;    
wire inst_sltu;   
wire inst_nor;    
wire inst_and;    
wire inst_or;     
wire inst_xor;     
wire inst_lu12i_w;
wire inst_addi_w;
wire inst_slti;
wire inst_sltui;
wire inst_pcaddi;
wire inst_pcaddu12i;
wire inst_andn;
wire inst_orn;
wire inst_andi;
wire inst_ori;
wire inst_xori;
// wire inst_mul_w;
// wire inst_mulh_w;
// wire inst_mulh_wu;
// wire inst_div_w;
// wire inst_mod_w;
// wire inst_div_wu;
// wire inst_mod_wu;

wire inst_slli_w;  
wire inst_srli_w;  
wire inst_srai_w;  
wire inst_sll_w;
wire inst_srl_w;
wire inst_sra_w;

wire inst_jirl;   
wire inst_b;      
wire inst_bl;     
wire inst_beq;    
wire inst_bne; 
wire inst_blt;
wire inst_bge;
wire inst_bltu;
wire inst_bgeu;

// wire inst_ll_w;
// wire inst_sc_w;
wire inst_ld_b;
wire inst_ld_bu;
wire inst_ld_h;
wire inst_ld_hu;
wire inst_ld_w;
wire inst_st_b;
wire inst_st_h;
wire inst_st_w;

// wire inst_syscall;
// wire inst_break;
// wire inst_csrrd;
// wire inst_csrwr;
// wire inst_csrxchg;
// wire inst_ertn;

// wire inst_rdcntid_w;
// wire inst_rdcntvl_w;
// wire inst_rdcntvh_w;
// wire inst_idle;

// wire inst_tlbsrch;
// wire inst_tlbrd;
// wire inst_tlbwr;
// wire inst_tlbfill;
// wire inst_invtlb;

// wire inst_cacop;
// wire inst_valid_cacop;
// wire inst_preld;
// wire inst_dbar;
// wire inst_ibar;

wire inst_nop;

//控制信号译码
wire br_taken;
wire [`InstAddrBus] br_target;
  // wire br_taken_cancel;
  // reg         branch_slot_cancel;
wire        br_inst;
reg         br_jirl;
wire        br_need_reg_data; //是分支指令且此分支指令需要寄存器中的数据

wire        inst_need_rj;
wire        inst_need_rkd;

wire        inst_valid;


wire [31:0] rj_value_forward_exe; //exe阶段的前递数据
wire [31:0] rkd_value_forward_exe;

wire [`AluOpBus] alu_op;
// wire [ 3:0] mul_div_op;
// wire        mul_div_sign;
wire        src_reg_is_rd;
wire        src1_is_pc;
wire        src2_is_imm;
wire        src2_is_4;
// wire        load_op;
// wire        res_from_csr;
// wire        csr_mask;
wire        mem_b_size; //标识当前指令的内存访问操作的大小,byte
wire        mem_h_size; //标识当前指令的内存访问操作的大小, half byte
wire        mem_sign_exted; //有符号整数
wire        dst_is_r1; //inst_bl：目标地址在r1
// wire        dst_is_rj; //inst_rdcntid_w
wire        gr_we; //寄存器写使能
wire        store_op; //是存储指令
// wire        csr_we;

wire [1: 0] mem_size; //选择是半字节还是整个字节
wire [`RegAddrBus ] dest; //最终的写地址
wire [`InstBus    ] rj_value;
wire [`InstBus    ] rkd_value;
wire [31:0] id_imm; //立即数扩展后

//立即数控制
wire need_ui5;
wire need_si12;
wire need_ui12;
wire need_si14_pc;
wire need_si16_pc;
wire need_si20;
wire need_si20_pc;
wire need_si26_pc;

//寄存器堆
wire [`RegAddrBus ] rf_raddr1;
wire [`RegBus     ] rf_rdata1;
wire [`RegAddrBus ] rf_raddr2;
wire [`RegBus     ] rf_rdata2;

//分支判断
wire        rj_eq_rd;
wire        rj_lt_rd_sign;
wire        rj_lt_rd_unsign;



//======================================================
//=================== Main Code ====================
//======================================================
//当前stage控制信号
  assign id_allowin = ~id_valid | id_ready_go & exe_allowin;
  assign id_to_exe_valid = id_valid & id_ready_go;
assign id_ready_go    = !(rf2_forward_stall || rf1_forward_stall/*|| idle_stall || tlb_inst_stall || ibar_stall || dbar_stall*/)/* || excp*/;

  always @(posedge clk) begin
    if (~resetn) begin
      id_valid <= 1'b0;
    // end else if (branch_slot_cancel) begin  //如果采取分支，那么取消当前IF阶段的指令
    end else if (br_taken) begin
      id_valid <= 1'b0;
    end else if (id_allowin) begin
      id_valid <= if_to_id_valid;
    end
  end

  always @(posedge clk) begin
    if (~resetn) begin
        id_data <= `ID_DATA_Reset;
    end else if (id_allowin & if_to_id_valid) begin
        id_data <= if_to_id_bus;
    end
  end

//前递和阻塞
assign {rf1_forward_stall, rj_value, rj_value_forward_exe} = ((rf_raddr1 == exe_forward_reg) && exe_forward_enable && inst_need_rj) ? {exe_dep_need_stall, exe_forward_data, exe_forward_data} :
                                                            ((rf_raddr1 == ms_forward_reg) && mem_forward_enable && inst_need_rj) ? {mem_dep_need_stall || br_need_reg_data, mem_forward_data, rf_rdata1} :
                                                                                                                                   {1'b0, rf_rdata1, rf_rdata1}; 

assign {rf2_forward_stall, rkd_value, rkd_value_forward_exe} = ((rf_raddr2 == exe_forward_reg) && exe_forward_enable && inst_need_rkd) ? {exe_dep_need_stall, exe_forward_data, exe_forward_data} :

//译码
//指令拆解
assign op_31_26  = id_inst[31:26];
assign op_25_22  = id_inst[25:22];
assign op_21_20  = id_inst[21:20];
assign op_19_15  = id_inst[19:15];

assign rd   = id_inst[ 4: 0];
assign rj   = id_inst[ 9: 5];
assign rk   = id_inst[14:10];

assign i12  = id_inst[21:10];
assign i14  = id_inst[23:10];
assign i20  = id_inst[24: 5];
assign i16  = id_inst[25:10];
assign i26  = {id_inst[ 9: 0], id_inst[25:10]};

//csr
// assign csr_idx = id_inst[23:10];

//译码器译码
decoder_6_64 u_dec0(.in(op_31_26 ), .out(op_31_26_d ));
decoder_4_16 u_dec1(.in(op_25_22 ), .out(op_25_22_d ));
decoder_2_4  u_dec2(.in(op_21_20 ), .out(op_21_20_d ));
decoder_5_32 u_dec3(.in(op_19_15 ), .out(op_19_15_d ));

//指令译码
assign inst_add_w      = op_31_26_d[6'h00] & op_25_22_d[4'h0] & op_21_20_d[2'h1] & op_19_15_d[5'h00];
assign inst_sub_w      = op_31_26_d[6'h00] & op_25_22_d[4'h0] & op_21_20_d[2'h1] & op_19_15_d[5'h02];
assign inst_slt        = op_31_26_d[6'h00] & op_25_22_d[4'h0] & op_21_20_d[2'h1] & op_19_15_d[5'h04];
assign inst_sltu       = op_31_26_d[6'h00] & op_25_22_d[4'h0] & op_21_20_d[2'h1] & op_19_15_d[5'h05];
assign inst_nor        = op_31_26_d[6'h00] & op_25_22_d[4'h0] & op_21_20_d[2'h1] & op_19_15_d[5'h08];
assign inst_and        = op_31_26_d[6'h00] & op_25_22_d[4'h0] & op_21_20_d[2'h1] & op_19_15_d[5'h09];
assign inst_or         = op_31_26_d[6'h00] & op_25_22_d[4'h0] & op_21_20_d[2'h1] & op_19_15_d[5'h0a];
assign inst_xor        = op_31_26_d[6'h00] & op_25_22_d[4'h0] & op_21_20_d[2'h1] & op_19_15_d[5'h0b];
assign inst_orn        = op_31_26_d[6'h00] & op_25_22_d[4'h0] & op_21_20_d[2'h1] & op_19_15_d[5'h0c];
assign inst_andn       = op_31_26_d[6'h00] & op_25_22_d[4'h0] & op_21_20_d[2'h1] & op_19_15_d[5'h0d];
assign inst_sll_w      = op_31_26_d[6'h00] & op_25_22_d[4'h0] & op_21_20_d[2'h1] & op_19_15_d[5'h0e];
assign inst_srl_w      = op_31_26_d[6'h00] & op_25_22_d[4'h0] & op_21_20_d[2'h1] & op_19_15_d[5'h0f];
assign inst_sra_w      = op_31_26_d[6'h00] & op_25_22_d[4'h0] & op_21_20_d[2'h1] & op_19_15_d[5'h10];
// assign inst_mul_w      = op_31_26_d[6'h00] & op_25_22_d[4'h0] & op_21_20_d[2'h1] & op_19_15_d[5'h18];
// assign inst_mulh_w     = op_31_26_d[6'h00] & op_25_22_d[4'h0] & op_21_20_d[2'h1] & op_19_15_d[5'h19];
// assign inst_mulh_wu    = op_31_26_d[6'h00] & op_25_22_d[4'h0] & op_21_20_d[2'h1] & op_19_15_d[5'h1a];
// assign inst_div_w      = op_31_26_d[6'h00] & op_25_22_d[4'h0] & op_21_20_d[2'h2] & op_19_15_d[5'h00];
// assign inst_mod_w      = op_31_26_d[6'h00] & op_25_22_d[4'h0] & op_21_20_d[2'h2] & op_19_15_d[5'h01];
// assign inst_div_wu     = op_31_26_d[6'h00] & op_25_22_d[4'h0] & op_21_20_d[2'h2] & op_19_15_d[5'h02];
// assign inst_mod_wu     = op_31_26_d[6'h00] & op_25_22_d[4'h0] & op_21_20_d[2'h2] & op_19_15_d[5'h03];
// assign inst_break      = op_31_26_d[6'h00] & op_25_22_d[4'h0] & op_21_20_d[2'h2] & op_19_15_d[5'h14];
// assign inst_syscall    = op_31_26_d[6'h00] & op_25_22_d[4'h0] & op_21_20_d[2'h2] & op_19_15_d[5'h16];
assign inst_slli_w     = op_31_26_d[6'h00] & op_25_22_d[4'h1] & op_21_20_d[2'h0] & op_19_15_d[5'h01];
assign inst_srli_w     = op_31_26_d[6'h00] & op_25_22_d[4'h1] & op_21_20_d[2'h0] & op_19_15_d[5'h09];
assign inst_srai_w     = op_31_26_d[6'h00] & op_25_22_d[4'h1] & op_21_20_d[2'h0] & op_19_15_d[5'h11];
// assign inst_idle       = op_31_26_d[6'h01] & op_25_22_d[4'h9] & op_21_20_d[2'h0] & op_19_15_d[5'h11];
// assign inst_invtlb     = op_31_26_d[6'h01] & op_25_22_d[4'h9] & op_21_20_d[2'h0] & op_19_15_d[5'h13];
// assign inst_dbar       = op_31_26_d[6'h0e] & op_25_22_d[4'h1] & op_21_20_d[2'h3] & op_19_15_d[5'h04];
// assign inst_ibar       = op_31_26_d[6'h0e] & op_25_22_d[4'h1] & op_21_20_d[2'h3] & op_19_15_d[5'h05];
assign inst_slti       = op_31_26_d[6'h00] & op_25_22_d[4'h8];
assign inst_sltui      = op_31_26_d[6'h00] & op_25_22_d[4'h9];
assign inst_addi_w     = op_31_26_d[6'h00] & op_25_22_d[4'ha];
assign inst_andi       = op_31_26_d[6'h00] & op_25_22_d[4'hd];
assign inst_ori        = op_31_26_d[6'h00] & op_25_22_d[4'he];
assign inst_xori       = op_31_26_d[6'h00] & op_25_22_d[4'hf];
assign inst_ld_b       = op_31_26_d[6'h0a] & op_25_22_d[4'h0];
assign inst_ld_h       = op_31_26_d[6'h0a] & op_25_22_d[4'h1];
assign inst_ld_w       = op_31_26_d[6'h0a] & op_25_22_d[4'h2];
assign inst_st_b       = op_31_26_d[6'h0a] & op_25_22_d[4'h4];
assign inst_st_h       = op_31_26_d[6'h0a] & op_25_22_d[4'h5];
assign inst_st_w       = op_31_26_d[6'h0a] & op_25_22_d[4'h6];
assign inst_ld_bu      = op_31_26_d[6'h0a] & op_25_22_d[4'h8];
assign inst_ld_hu      = op_31_26_d[6'h0a] & op_25_22_d[4'h9];
// assign inst_cacop      = op_31_26_d[6'h01] & op_25_22_d[4'h8];
// assign inst_preld      = op_31_26_d[6'h0a] & op_25_22_d[4'hb];
assign inst_jirl       = op_31_26_d[6'h13];
assign inst_b          = op_31_26_d[6'h14];
assign inst_bl         = op_31_26_d[6'h15];
assign inst_beq        = op_31_26_d[6'h16];
assign inst_bne        = op_31_26_d[6'h17];
assign inst_blt        = op_31_26_d[6'h18];
assign inst_bge        = op_31_26_d[6'h19];
assign inst_bltu       = op_31_26_d[6'h1a];
assign inst_bgeu       = op_31_26_d[6'h1b];
assign inst_lu12i_w    = op_31_26_d[6'h05] & ~id_inst[25];
assign inst_pcaddi     = op_31_26_d[6'h06] & ~id_inst[25];
assign inst_pcaddu12i  = op_31_26_d[6'h07] & ~id_inst[25];
// assign inst_csrxchg    = op_31_26_d[6'h01] & ~id_inst[25] & ~id_inst[24] & (~rj_d[5'h00] & ~rj_d[5'h01]);  //rj != 0,1
// assign inst_ll_w       = op_31_26_d[6'h08] & ~id_inst[25] & ~id_inst[24];
// assign inst_sc_w       = op_31_26_d[6'h08] & ~id_inst[25] &  id_inst[24];
// assign inst_csrrd      = op_31_26_d[6'h01] & ~id_inst[25] & ~id_inst[24] & rj_d[5'h00];
// assign inst_csrwr      = op_31_26_d[6'h01] & ~id_inst[25] & ~id_inst[24] & rj_d[5'h01];
// assign inst_rdcntid_w  = op_31_26_d[6'h00] & op_25_22_d[4'h0] & op_21_20_d[2'h0] & op_19_15_d[5'h00] & rk_d[5'h18] & rd_d[5'h00];
// assign inst_rdcntvl_w  = op_31_26_d[6'h00] & op_25_22_d[4'h0] & op_21_20_d[2'h0] & op_19_15_d[5'h00] & rk_d[5'h18] & rj_d[5'h00] & !rd_d[5'h00];
// assign inst_rdcntvh_w  = op_31_26_d[6'h00] & op_25_22_d[4'h0] & op_21_20_d[2'h0] & op_19_15_d[5'h00] & rk_d[5'h19] & rj_d[5'h00];
// assign inst_ertn       = op_31_26_d[6'h01] & op_25_22_d[4'h9] & op_21_20_d[2'h0] & op_19_15_d[5'h10] & rk_d[5'h0e] & rj_d[5'h00] & rd_d[5'h00];
// assign inst_tlbsrch    = op_31_26_d[6'h01] & op_25_22_d[4'h9] & op_21_20_d[2'h0] & op_19_15_d[5'h10] & rk_d[5'h0a] & rj_d[5'h00] & rd_d[5'h00];
// assign inst_tlbrd      = op_31_26_d[6'h01] & op_25_22_d[4'h9] & op_21_20_d[2'h0] & op_19_15_d[5'h10] & rk_d[5'h0b] & rj_d[5'h00] & rd_d[5'h00];
// assign inst_tlbwr      = op_31_26_d[6'h01] & op_25_22_d[4'h9] & op_21_20_d[2'h0] & op_19_15_d[5'h10] & rk_d[5'h0c] & rj_d[5'h00] & rd_d[5'h00];
// assign inst_tlbfill    = op_31_26_d[6'h01] & op_25_22_d[4'h9] & op_21_20_d[2'h0] & op_19_15_d[5'h10] & rk_d[5'h0d] & rj_d[5'h00] & rd_d[5'h00];

// assign inst_valid_cacop = inst_cacop&&(dest[2:0]==3'b0||dest[2:0]==3'b1)&&(dest[4:3]==2'd0||dest[4:3]==2'd1||dest[4:3]==2'd2);
// assign inst_nop = inst_cacop&&((dest[2:0]!=3'b0&&dest[2:0]!=3'b1)||(dest[4:3]==2'd3));

//控制信号译码
assign alu_op[ 0] = inst_add_w      | 
                    inst_addi_w     | 
                    inst_ld_b       |
                    inst_ld_h       |
                    inst_ld_w       |
                    inst_st_b       |
                    inst_st_h       | 
                    inst_st_w       |
                    inst_ld_bu      |
                    inst_ld_hu      | 
                    // inst_ll_w       |
                    // inst_sc_w       |
                    inst_jirl       | 
                    inst_bl         |
                    inst_pcaddi     |
                    inst_pcaddu12i  |
                    // inst_valid_cacop|
                    // inst_preld      
                    ;

assign alu_op[ 1] = inst_sub_w;
assign alu_op[ 2] = inst_slt   | inst_slti;
assign alu_op[ 3] = inst_sltu  | inst_sltui;
assign alu_op[ 4] = inst_and   | inst_andi;
assign alu_op[ 5] = inst_nor;
assign alu_op[ 6] = inst_or    | inst_ori;
assign alu_op[ 7] = inst_xor   | inst_xori;
assign alu_op[ 8] = inst_sll_w | inst_slli_w;
assign alu_op[ 9] = inst_srl_w | inst_srli_w;
assign alu_op[10] = inst_sra_w | inst_srai_w;
assign alu_op[11] = inst_lu12i_w;
// assign alu_op[12] = inst_andn;
// assign alu_op[13] = inst_orn;

// assign mul_div_op[ 0] = inst_mul_w;
// assign mul_div_op[ 1] = inst_mulh_w | inst_mulh_wu;
// assign mul_div_op[ 2] = inst_div_w  | inst_div_wu;
// assign mul_div_op[ 3] = inst_mod_w  | inst_mod_wu;

// assign mul_div_sign  =  inst_mul_w | inst_mulh_w | inst_div_w | inst_mod_w;

assign src_reg_is_rd = inst_beq    | 
                       inst_bne    | 
                       inst_blt    | 
                       inst_bltu   | 
                       inst_bge    | 
                       inst_bgeu   |
                       inst_st_b   |
                       inst_st_h   |
                       inst_st_w   |
                       inst_sc_w   |
                      //  inst_csrwr  |
                      //  inst_csrxchg
                       ;

assign src1_is_pc    = inst_jirl | inst_bl | inst_pcaddi | inst_pcaddu12i;

assign src2_is_imm   = inst_slli_w     |
                       inst_srli_w     |
                       inst_srai_w     |
                       inst_addi_w     |
                       inst_slti       |
                       inst_sltui      |
                       inst_andi       |
                       inst_ori        |
                       inst_xori       |
                       inst_pcaddi     |
                       inst_pcaddu12i  |
                       inst_ld_b       |
                       inst_ld_h       |
                       inst_ld_w       |
                       inst_ld_bu      |
                       inst_ld_hu      |
                       inst_st_b       |
                       inst_st_h       |
                       inst_st_w       |
                      //  inst_ll_w       |
                      //  inst_sc_w       |
                       inst_lu12i_w    |
                      //  inst_valid_cacop|
                      //  inst_preld      
                      ;

assign src2_is_4     = inst_jirl | inst_bl;

assign load_op       = inst_ld_b | inst_ld_h | inst_ld_w | inst_ld_bu | inst_ld_hu | inst_ll_w;
assign mem_b_size    = inst_ld_b | inst_ld_bu | inst_st_b;
assign mem_h_size    = inst_ld_h | inst_ld_hu | inst_st_h;
assign mem_sign_exted= inst_ld_b | inst_ld_h;
assign dst_is_r1     = inst_bl;
assign gr_we         = ~inst_st_b       & 
                       ~inst_st_h       & 
                       ~inst_st_w       & 
                       ~inst_beq        & 
                       ~inst_bne        & 
                       ~inst_blt        & 
                       ~inst_bge        &
                       ~inst_bltu       &
                       ~inst_bgeu       &
                       ~inst_b          &
                      //  ~inst_syscall    &
                      //  ~inst_tlbsrch    &
                      //  ~inst_tlbrd      &
                      //  ~inst_tlbwr      &
                      //  ~inst_tlbfill    &
                      //  ~inst_invtlb     &
                      //  ~inst_valid_cacop&
                      //  ~inst_preld      &      
                      //  ~inst_dbar       &      
                      //  ~inst_ibar       &
					  //  ~inst_nop        
            ;

assign store_op      = inst_st_b | inst_st_h | inst_st_w | (inst_sc_w & ds_llbit);

assign dest          = (dst_is_r1) ? 5'd1 :
                       (dst_is_rj) ? rj   : rd;

// assign dst_is_rj     = inst_rdcntid_w;

// assign {rdcnt_en, rdcnt_result} = ({33{inst_rdcntvl_w}} & {1'b1, timer_64[31: 0]}) |
//                                   ({33{inst_rdcntvh_w}} & {1'b1, timer_64[63:32]}) |
//                                   ({33{inst_rdcntid_w}} & {1'b1, csr_tid}); 

// assign csr_data      = rdcnt_en  ? rdcnt_result      : 
//                        inst_sc_w ? {31'b0, ds_llbit} : rd_csr_data;                      
                                                                        
// assign res_from_csr  = inst_csrrd | inst_csrwr | inst_csrxchg | inst_rdcntid_w | inst_rdcntvh_w | inst_rdcntvl_w | inst_sc_w;
// assign csr_we        = inst_csrwr | inst_csrxchg;
// assign csr_mask      = inst_csrxchg;

assign mem_size  = {mem_h_size, mem_b_size};

assign inst_need_rj = inst_add_w      |
                      inst_sub_w      |
                      inst_addi_w     |
                      inst_slt        |
                      inst_sltu       |
                      inst_slti       |
                      inst_sltui      |
                      inst_and        |
                      inst_or         |
                      inst_nor        |
                      inst_xor        |
                      inst_andi       |
                      inst_ori        |
                      inst_xori       |
                      // inst_mul_w      |
                      // inst_mulh_w     |
                      // inst_mulh_wu    |
                      // inst_div_w      |
                      // inst_div_wu     |
                      // inst_mod_w      |
                      // inst_mod_wu     |
                      inst_sll_w      |
                      inst_srl_w      |
                      inst_sra_w      |
                      inst_slli_w     |
                      inst_srli_w     |
                      inst_srai_w     |
                      inst_beq        |
                      inst_bne        |
                      inst_blt        |
                      inst_bltu       |
                      inst_bge        |
                      inst_bgeu       |
                      inst_jirl       |
                      inst_ld_b       |
                      inst_ld_bu      |
                      inst_ld_h       |
                      inst_ld_hu      |
                      inst_ld_w       |
                      inst_st_b       |
                      inst_st_h       |
                      inst_st_w       |
                      // inst_preld      |
                      // inst_ll_w       |
                      // inst_sc_w       |
                      // inst_csrxchg    |
                      // inst_valid_cacop|
                      // inst_invtlb     
                      ;
                      
assign inst_need_rkd = inst_add_w   |
                       inst_sub_w   |
                       inst_slt     |
                       inst_sltu    |
                       inst_and     |
                       inst_or      |
                       inst_nor     |
                       inst_xor     |
                      //  inst_mul_w   |
                      //  inst_mulh_w  |
                      //  inst_mulh_wu |
                      //  inst_div_w   |
                      //  inst_div_wu  |
                      //  inst_mod_w   |
                      //  inst_mod_wu  |
                       inst_sll_w   |
                       inst_srl_w   |
                       inst_sra_w   |
                       inst_beq     |
                       inst_bne     |
                       inst_blt     |
                       inst_bltu    |
                       inst_bge     |
                       inst_bgeu    |
                       inst_st_b    |
                       inst_st_h    |
                       inst_st_w    |
                       inst_sc_w    |
                      //  inst_csrwr   |
                      //  inst_csrxchg |
                      //  inst_invtlb  
                       ;


//统一处理立即数扩展
assign id_imm = ({32{need_ui5    }} & {27'b0, rk}               ) |
                ({32{need_si12   }} & {{20{i12[11]}}, i12}      ) |
                ({32{need_ui12   }} & {20'b0, i12}              ) |
                ({32{need_si14_pc}} & {{16{i14[13]}}, i14, 2'b0}) |
                ({32{need_si16_pc}} & {{14{i16[15]}}, i16, 2'b0}) |
                ({32{need_si20   }} & {i20, 12'b0}              ) |
                ({32{need_si20_pc}} & {{10{i20[19]}}, i20, 2'b0}) |
                ({32{need_si26_pc}} & {{ 4{i26[25]}}, i26, 2'b0}) ;


//立即数控制
assign need_ui5      =  inst_slli_w | inst_srli_w | inst_srai_w;
assign need_si12     =  inst_addi_w     |
                        inst_ld_b       |
                        inst_ld_h       |
                        inst_ld_w       |
                        inst_st_b       |
                        inst_st_h       | 
                        inst_st_w       |
                        inst_ld_bu      |
                        inst_ld_hu      | 
                        inst_slti       | 
                        inst_sltui      |
                        inst_valid_cacop|
                        inst_preld      ;

assign need_ui12     =  inst_andi | inst_ori | inst_xori;
assign need_si14_pc  =  inst_ll_w | inst_sc_w;
assign need_si16_pc  =  inst_jirl |
                        inst_beq  | 
                        inst_bne  | 
                        inst_blt  | 
                        inst_bge  | 
                        inst_bltu | 
                        inst_bgeu;

assign need_si20     =  inst_lu12i_w | inst_pcaddu12i;
assign need_si20_pc  =  inst_pcaddi;
assign need_si26_pc  =  inst_b | inst_bl;



//寄存器堆
assign rf_raddr1 = rj;
assign rf_raddr2 = src_reg_is_rd ? rd : rk;

regfile u_regfile(
    .clk    (clk      ),
    .raddr1 (rf_raddr1),
    .rdata1 (rf_rdata1),
    .raddr2 (rf_raddr2),
    .rdata2 (rf_rdata2),

    .we     (rf_we    ),
    .waddr  (rf_waddr ),
    .wdata  (rf_wdata )
    );

//分支判断
assign rj_eq_rd        = (rj_value_forward_exe == rkd_value_forward_exe);
assign rj_lt_rd_unsign = (rj_value_forward_exe < rkd_value_forward_exe);   //operate "<" has nice timing
assign rj_lt_rd_sign   = (rj_value_forward_exe[31] && ~rkd_value_forward_exe[31]) ? 1'b1 :
                         (~rj_value_forward_exe[31] && rkd_value_forward_exe[31]) ? 1'b0 : rj_lt_rd_unsign;                         

assign br_taken  = (   inst_beq  &&  rj_eq_rd
                    || inst_bne  && !rj_eq_rd
                    || inst_blt  &&  rj_lt_rd_sign
                    || inst_bge  && !rj_lt_rd_sign
                    || inst_bltu &&  rj_lt_rd_unsign
                    || inst_bgeu && !rj_lt_rd_unsign
                    || inst_jirl
                    || inst_bl
                    || inst_b
                    ) && ds_valid && !ds_excp; 
assign br_target = ({32{inst_beq || inst_bne || inst_bl || inst_b || 
                    inst_blt || inst_bge || inst_bltu || inst_bgeu}} & (ds_pc + ds_imm   ))            |
                   ({32{inst_jirl}}                                  & (rj_value_forward_exe + ds_imm)) ;

assign br_inst = br_need_reg_data || inst_bl || inst_b;
assign br_need_reg_data = inst_beq   ||
                          inst_bne   ||
                          inst_blt   ||
                          inst_bge   ||
                          inst_bltu  ||
                          inst_bgeu  ||
                          inst_jirl;


// //branch slot cancel, need wait next valid inst after branch
// //only valid br_taken sign can generate slot_cancel.
// always @(posedge clk) begin
//     if (reset || flush_sign) begin
//     //flush signal need flush this buffer
//         branch_slot_cancel <= 1'b0;
//     end
//     else if (btb_pre_error_flush && exe_allowin && !if_to_id_valid) begin
//         branch_slot_cancel <= 1'b1;
//     end
//     else if (branch_slot_cancel && if_to_id_valid) begin
//         branch_slot_cancel <= 1'b0;
//     end
// end


endmodule