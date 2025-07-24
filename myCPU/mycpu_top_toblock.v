//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Wed Jul  9 02:02:43 2025
//Host        : Super-EvilLoong running 64-bit major release  (build 9200)
//Command     : generate_target mycpu_top_block.bd
//Design      : mycpu_top_block
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------

module mycpu_top(
//     clk,
//     data_sram_addr,
//     data_sram_en,
//     data_sram_rdata,
//     data_sram_wdata,
//     data_sram_we,
//     debug_wb_pc,
//     debug_wb_rf_wdata,
//     debug_wb_rf_we,
//     debug_wb_rf_wnum,
//     inst_sram_addr,
//     inst_sram_en,
//     inst_sram_rdata,
//     inst_sram_wdata,
//     inst_sram_we,
//     resetn);

    input wire aclk,
    input wire aresetn,

    //ar
    output wire [3:0] arid,
    output wire [31:0] araddr,
    output wire [7:0] arlen,
    output wire [2:0] arsize,
    output wire [1:0] arburst,
    output wire [1:0] arlock,
    output wire [3:0] arcache,
    output wire [2:0] arprot,
    output wire arvalid,
    input wire arready,

    //r
    input wire [3:0] rid,
    input wire [31:0] rdata,
    input wire [1:0] rresp,
    input wire rlast,
    input wire rvalid,
    output wire rready,

    //aw
    output wire [3:0] awid,
    output wire [31:0] awaddr,
    output wire [7:0] awlen,
    output wire [2:0] awsize,
    output wire [1:0] awburst,
    output wire [1:0] awlock,
    output wire [3:0] awcache,
    output wire [2:0] awprot,
    output wire awvalid,
    input wire awready,

    //w
    output wire [3:0] wid,
    output wire [31:0] wdata,
    output wire [3:0] wstrb,
    output wire wlast,
    output wire wvalid,
    input wire wready,

    //b
    input wire [3:0] bid,
    input wire [1:0] bresp,
    input wire bvalid,
    output wire bready,

    //debug
    output wire [31:0] debug_wb_pc,
    output wire [ 3:0] debug_wb_rf_we,
    output wire [ 4:0] debug_wb_rf_wnum,
    output wire [31:0] debug_wb_rf_wdata
);

//   input clk;
//   output [31:0]data_sram_addr;
//   output data_sram_en;
//   input [31:0]data_sram_rdata;
//   output [31:0]data_sram_wdata;
//   output [3:0]data_sram_we;
//   output [31:0]debug_wb_pc;
//   output [31:0]debug_wb_rf_wdata;
//   output [3:0]debug_wb_rf_we;
//   output [4:0]debug_wb_rf_wnum;
//   output [31:0]inst_sram_addr;
//   output inst_sram_en;
//   input [31:0]inst_sram_rdata;
//   output [31:0]inst_sram_wdata;
//   output [3:0]inst_sram_we;
//   input resetn;

//   wire Net;
//   wire Net1;
//   wire clk_1;
//   wire [31:0]csr_0_eentry_out;
//   wire [31:0]csr_0_era_out;
//   wire csr_0_has_int;
//   wire [1:0]csr_0_plv_out;
//   wire [31:0]csr_0_rd_data;
//   wire [31:0]csr_0_tid_out;
//   wire [63:0]csr_0_timer_64_out;
//   wire [31:0]data_sram_rdata_1;
//   wire [31:0]exe_stage_0_data_sram_addr;
//   wire exe_stage_0_data_sram_en;
//   wire [31:0]exe_stage_0_data_sram_wdata;
//   wire [3:0]exe_stage_0_data_sram_we;
//   wire exe_stage_0_exe_allowin;
//   wire [38:0]exe_stage_0_exe_to_id_bus;
//   wire [169:0]exe_stage_0_exe_to_mem_bus;
//   wire exe_stage_0_exe_to_mem_valid;
//   wire id_stage_0_id_allowin;
//   wire [220:0]id_stage_0_id_to_exe_bus;
//   wire id_stage_0_id_to_exe_valid;
//   wire [33:0]id_stage_0_id_to_if_bus;
//   wire [13:0]id_stage_0_rd_csr_addr;
//   wire [68:0]if_stage_0_if_to_id_bus;
//   wire if_stage_0_if_to_id_valid;
//   wire [31:0]if_stage_0_inst_sram_addr;
//   wire if_stage_0_inst_sram_en;
//   wire [31:0]if_stage_0_inst_sram_wdata;
//   wire [3:0]if_stage_0_inst_sram_we;
//   wire [31:0]inst_sram_rdata_1;
//   wire mem_stage_0_mem_allowin;
//   wire mem_stage_0_mem_flush;
//   wire [38:0]mem_stage_0_mem_to_id_bus;
//   wire [167:0]mem_stage_0_mem_to_wb_bus;
//   wire mem_stage_0_mem_to_wb_valid;
//   wire resetn_1;
//   wire [31:0]wb_stage_0_bad_va;
//   wire [5:0]wb_stage_0_csr_ecode;
//   wire [31:0]wb_stage_0_csr_era;
//   wire [8:0]wb_stage_0_csr_esubcode;
//   wire wb_stage_0_csr_wr_en;
//   wire [31:0]wb_stage_0_debug_wb_pc;
//   wire [31:0]wb_stage_0_debug_wb_rf_wdata;
//   wire [3:0]wb_stage_0_debug_wb_rf_we;
//   wire [4:0]wb_stage_0_debug_wb_rf_wnum;
//   wire wb_stage_0_refetch_flush;
//   wire wb_stage_0_va_error;
//   wire wb_stage_0_wb_allowin;
//   wire [64:0]wb_stage_0_wb_to_id_bus;
//   wire [13:0]wb_stage_0_wr_csr_addr;
//   wire [31:0]wb_stage_0_wr_csr_data;

  wire                      id_allowin;
  wire                      exe_allowin;
  wire                      mem_allowin;
  wire                      wb_allowin;
  wire                      if_to_id_valid;
  wire                      id_to_exe_valid;
  wire                      exe_to_mem_valid;
  wire                      mem_to_wb_valid;

  wire [  `IF_TO_ID_WD] if_to_id_bus;
  wire [  `ID_TO_IF_WD] id_to_if_bus;
  wire [ `ID_TO_EXE_WD] id_to_exe_bus;
  wire [`EXE_TO_MEM_WD] exe_to_mem_bus;
  wire [ `MEM_TO_WB_WD] mem_to_wb_bus;
  wire [  `WB_TO_ID_WD] wb_to_id_bus;
  wire [ `EXE_TO_ID_WD] exe_to_id_bus;
  wire [ `MEM_TO_ID_WD] mem_to_id_bus;


  wire [ `CSR_TO_IF_WD] csr_to_if_bus;
  wire [ `CSR_TO_ID_WD] csr_to_id_bus;

  wire [ `ID_TO_CSR_WD] id_to_csr_bus;

  wire [ `WB_TO_CSR_WD] wb_to_csr_bus;

wire flush_from_mem;
  wire flush_sign3_from_wb;

assign flush_sign3_from_wb = excp_flush | ertn_flush | refetch_flush ; 

//csr
//from to id 
wire [13:0]                   csr_rd_addr      ;
wire [31:0]                   csr_rd_data      ;
//timer 64
wire [63:0]                   csr_timer_64_out ;
wire [31:0]                   csr_tid_out      ;
//from wb
wire                          csr_wr_en   ;
wire  [13:0]                  csr_wr_addr     ;
wire  [31:0]                  csr_wr_data     ;
//interrupt
wire [ 7:0]                   interrupt    ;
wire                          csr_has_int      ;
//from wb
wire                           excp_flush    ;
wire                           ertn_flush    ;
wire                           refetch_flush ;

wire  [31:0]                   csr_era_in      ;
wire  [ 8:0]                   csr_esubcode_in ;
wire  [ 5:0]                   csr_ecode_in    ;
wire                           csr_va_error_in ;
wire  [31:0]                   csr_bad_va_in   ;
wire                           csr_tlbsrch_en  ;
wire                           csr_tlbsrch_found;
wire  [ 4:0]                   csr_tlbsrch_index;
wire                           csr_excp_tlbrefill;
wire                           csr_excp_tlb    ;
wire  [18:0]                   csr_excp_tlb_vppn;
//from wb llbit
wire                           csr_llbit_in    ;
wire                           csr_llbit_set_in;
wire  [27:0]                   csr_lladdr_in   ;
wire                           csr_lladdr_set_in;
//to exe
wire                          csr_llbit_out    ;
wire [18:0]                   csr_vppn_out     ;
//to mem
wire [27:0]                   csr_lladdr_out   ;
//to if
wire [31:0]                   csr_eentry_out   ;
wire [31:0]                   csr_era_out      ;
wire [31:0]                   csr_tlbrentry_out;
wire                          csr_disable_cache;
//to addr trans
wire [ 9:0]                   csr_asid_out     ;
wire [ 4:0]                   csr_rand_index   ;
wire [31:0]                   csr_tlbehi_out   ;
wire [31:0]                   csr_tlbelo0_out  ;
wire [31:0]                   csr_tlbelo1_out  ;
wire [31:0]                   csr_tlbidx_out   ;
wire                          csr_pg_out       ;
wire                          csr_da_out       ;
wire [31:0]                   csr_dmw0_out     ;
wire [31:0]                   csr_dmw1_out     ;
wire [ 1:0]                   csr_datf_out     ;
wire [ 1:0]                   csr_datm_out     ;
wire [ 5:0]                   csr_ecode_out    ;
//from addr trans 
wire                           csr_tlbrd_en    ;
wire  [31:0]                   csr_tlbehi_in   ;
wire  [31:0]                   csr_tlbelo0_in  ;
wire  [31:0]                   csr_tlbelo1_in  ;
wire  [31:0]                   csr_tlbidx_in   ;
wire  [ 9:0]                   csr_asid_in     ;
//general use
wire [ 1:0]                   csr_plv_out      ;


  //类SRAM
  wire                      inst_sram_req;
  wire                      inst_sram_wr;
  wire [               3:0] inst_sram_wstrb;
  wire [               1:0] inst_sram_size;
  wire [              31:0] inst_sram_addr;
  wire [              31:0] inst_sram_wdata;
  wire [              31:0] inst_sram_rdata;
  wire                      inst_sram_addr_ok;
  wire                      inst_sram_data_ok;
  wire                      data_sram_req;
  wire                      data_sram_wr;
  wire [               3:0] data_sram_wstrb;
  wire [               1:0] data_sram_size;
  wire [              31:0] data_sram_addr;
  wire [              31:0] data_sram_wdata;
  wire [              31:0] data_sram_rdata;
  wire                      data_sram_addr_ok;
  wire                      data_sram_data_ok;


//   assign clk_1 = clk;
//   assign data_sram_addr[31:0] = exe_stage_0_data_sram_addr;
//   assign data_sram_en = exe_stage_0_data_sram_en;
//   assign data_sram_rdata_1 = data_sram_rdata[31:0];
//   assign data_sram_wdata[31:0] = exe_stage_0_data_sram_wdata;
//   assign data_sram_we[3:0] = exe_stage_0_data_sram_we;
//   assign debug_wb_pc[31:0] = wb_stage_0_debug_wb_pc;
//   assign debug_wb_rf_wdata[31:0] = wb_stage_0_debug_wb_rf_wdata;
//   assign debug_wb_rf_we[3:0] = wb_stage_0_debug_wb_rf_we;
//   assign debug_wb_rf_wnum[4:0] = wb_stage_0_debug_wb_rf_wnum;
//   assign inst_sram_addr[31:0] = if_stage_0_inst_sram_addr;
//   assign inst_sram_en = if_stage_0_inst_sram_en;
//   assign inst_sram_rdata_1 = inst_sram_rdata[31:0];
//   assign inst_sram_wdata[31:0] = if_stage_0_inst_sram_wdata;
//   assign inst_sram_we[3:0] = if_stage_0_inst_sram_we;
//   assign resetn_1 = resetn;


  csr u_csr(
        // .asid_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        // .bad_va_in(wb_stage_0_bad_va),
        // .clk(clk_1),
        // .csr_wr_en(wb_stage_0_csr_wr_en),
        // .ecode_in(wb_stage_0_csr_ecode),
        // .eentry_out(csr_0_eentry_out),
        // .era_in(wb_stage_0_csr_era),
        // .era_out(csr_0_era_out),
        // .ertn_flush(Net1),
        // .esubcode_in(wb_stage_0_csr_esubcode),
        // .excp_flush(Net),
        // .excp_tlb(1'b0),
        // .excp_tlb_vppn({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        // .excp_tlbrefill(1'b0),
        // .has_int(csr_0_has_int),
        // .interrupt({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        // .lladdr_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        // .lladdr_set_in(1'b0),
        // .llbit_in(1'b0),
        // .llbit_set_in(1'b0),
        // .plv_out(csr_0_plv_out),
        // .rd_addr(id_stage_0_rd_csr_addr),
        // .rd_data(csr_0_rd_data),
        // .resetn(resetn_1),
        // .tid_out(csr_0_tid_out),
        // .timer_64_out(csr_0_timer_64_out),
        // .tlbehi_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        // .tlbelo0_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        // .tlbelo1_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        // .tlbidx_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        // .tlbrd_en(1'b0),
        // .tlbsrch_en(1'b0),
        // .tlbsrch_found(1'b0),
        // .tlbsrch_index({1'b0,1'b0,1'b0,1'b0,1'b0}),
        // .va_error_in(wb_stage_0_va_error),
        // .wr_addr(wb_stage_0_wr_csr_addr),
        // .wr_data(wb_stage_0_wr_csr_data)
        .clk                (aclk),
        .resetn             (aresetn),

        .rd_addr            (csr_rd_addr      ),
        .rd_data            (csr_rd_data      ),

        .timer_64_out       (csr_timer_64_out ),
        .tid_out            (csr_tid_out      ),

        .csr_wr_en          (csr_wr_en        ),
        .wr_addr            (csr_wr_addr      ),
        .wr_data            (csr_wr_data      ),
        
        .interrupt          (   8'b0 /*interrupt*/    ),
        .has_int            (csr_has_int      ),
        
        .excp_flush         (excp_flush       ),
        .ertn_flush         (ertn_flush       ),
        .era_in             (csr_era_in       ),
        .esubcode_in        (csr_esubcode_in  ),
        .ecode_in           (csr_ecode_in     ),
        .va_error_in        (csr_va_error_in  ),
        .bad_va_in          (csr_bad_va_in    ),
        .tlbsrch_en         (csr_tlbsrch_en   ),
        .tlbsrch_found      (csr_tlbsrch_found),
        .tlbsrch_index      (csr_tlbsrch_index),
        .excp_tlbrefill      (csr_excp_tlbrefill),
        .excp_tlb           (csr_excp_tlb     ),
        .excp_tlb_vppn      (csr_excp_tlb_vppn),
        
        .llbit_in           (csr_llbit_in     ),
        .llbit_set_in       (csr_llbit_set_in ),
        .lladdr_in          (csr_lladdr_in    ),
        .lladdr_set_in      (csr_lladdr_set_in),
        
        .llbit_out          (csr_llbit_out    ),
        .vppn_out           (csr_vppn_out     ),

        .lladdr_out         (csr_lladdr_out   ),

        .eentry_out         (csr_eentry_out   ),
        .era_out            (csr_era_out      ),
        .tlbrentry_out      (csr_tlbrentry_out),
        .disable_cache_out  (csr_disable_cache),

        .asid_out           (csr_asid_out     ),
        .rand_index         (csr_rand_index   ),
        .tlbehi_out         (csr_tlbehi_out   ),
        .tlbelo0_out        (csr_tlbelo0_out  ),
        .tlbelo1_out        (csr_tlbelo1_out  ),
        .tlbidx_out         (csr_tlbidx_out   ),
        .pg_out             (csr_pg_out       ),
        .da_out             (csr_da_out       ),
        .dmw0_out           (csr_dmw0_out     ),
        .dmw1_out           (csr_dmw1_out     ),
        .datf_out           (csr_datf_out     ),
        .datm_out           (csr_datm_out     ),
        .ecode_out          (csr_ecode_out    ),

        .tlbrd_en           (csr_tlbrd_en     ),
        .tlbehi_in          (csr_tlbehi_in    ),
        .tlbelo0_in         (csr_tlbelo0_in   ),
        .tlbelo1_in         (csr_tlbelo1_in   ),
        .tlbidx_in          (csr_tlbidx_in    ),
        .asid_in            (csr_asid_in      ),

        .plv_out            (csr_plv_out      )
    );

assign csr_to_if_bus = {
    excp_flush,
    ertn_flush,
    refetch_flush,
    csr_era_in,
    csr_eentry_out,
    csr_era_out   
};

  if_stage u_if_stage (
      .clk              (aclk),
      .resetn           (aresetn),

      .id_allowin       (id_allowin),
      .if_to_id_valid   (if_to_id_valid),
      .if_to_id_bus     (if_to_id_bus),

      .id_to_if_bus     (id_to_if_bus),

      .csr_to_if_bus    (csr_to_if_bus),

        // .inst_sram_addr(if_stage_0_inst_sram_addr),
        // .inst_sram_en(if_stage_0_inst_sram_en),
        // .inst_sram_rdata(inst_sram_rdata_1),
        // .inst_sram_wdata(if_stage_0_inst_sram_wdata),
        // .inst_sram_we(if_stage_0_inst_sram_we),
      .inst_sram_req    (inst_sram_req),
      .inst_sram_wr     (inst_sram_wr),
      .inst_sram_wstrb  (inst_sram_wstrb),
      .inst_sram_size   (inst_sram_size),
      .inst_sram_addr   (inst_sram_addr),
      .inst_sram_wdata  (inst_sram_wdata),
      .inst_sram_rdata  (inst_sram_rdata),
      .inst_sram_addr_ok(inst_sram_addr_ok),
      .inst_sram_data_ok(inst_sram_data_ok)

);

assign csr_to_id_bus = {

    csr_timer_64_out,
    csr_tid_out,

    csr_rd_data,
    csr_plv_out,
    csr_has_int
};

assign {
    csr_rd_addr
} = id_to_csr_bus;


  id_stage u_id_stage(
      .clk                      (aclk),
      .resetn                   (aresetn),
    
      .id_allowin               (id_allowin),
      .if_to_id_valid           (if_to_id_valid),
      .if_to_id_bus             (if_to_id_bus),
      .exe_allowin              (exe_allowin),
      .id_to_exe_valid          (id_to_exe_valid),
      .id_to_exe_bus            (id_to_exe_bus),
      .id_to_if_bus             (id_to_if_bus),
      .exe_to_id_bus            (exe_to_id_bus),
      .mem_to_id_bus            (mem_to_id_bus),
      .wb_to_rf_bus             (wb_to_id_bus),

      .flush_sign               (flush_sign3_from_wb),

      .csr_to_id_bus            (csr_to_id_bus),
      .id_to_csr_bus            (id_to_csr_bus)

);

  exe_stage u_exe_stage(
      .clk                       (aclk),
      .resetn                    (aresetn),

      .exe_allowin               (exe_allowin),
      .id_to_exe_valid           (id_to_exe_valid),
      .id_to_exe_bus             (id_to_exe_bus),

      .mem_allowin               (mem_allowin),
      .exe_to_mem_valid          (exe_to_mem_valid),
      .exe_to_mem_bus            (exe_to_mem_bus),

      .exe_to_id_bus             (exe_to_id_bus),

      .flush_from_mem            (flush_from_mem),

      .exe_flush_sign            (flush_sign3_from_wb),

        // .data_sram_addr(data_sram_addr),
        // .data_sram_en(data_sram_en),
        // .data_sram_wdata(data_sram_wdata),
        // .data_sram_we(data_sram_we)

      .data_sram_req             (data_sram_req),
      .data_sram_wr              (data_sram_wr),
      .data_sram_wstrb             (data_sram_wstrb),
      .data_sram_size            (data_sram_size),
      .data_sram_addr            (data_sram_addr),
      .data_sram_wdata           (data_sram_wdata),
      .data_sram_addr_ok         (data_sram_addr_ok)

);
 


  mem_stage u_mem_stage(
      .clk                       (aclk),
      .resetn                    (aresetn),

      .mem_allowin               (mem_allowin),
      .exe_to_mem_valid          (exe_to_mem_valid),
      .exe_to_mem_bus            (exe_to_mem_bus),

      .wb_allowin                (wb_allowin),
      .mem_to_wb_valid           (mem_to_wb_valid),
      .mem_to_wb_bus             (mem_to_wb_bus),

      .mem_to_id_bus             (mem_to_id_bus),

      .data_sram_rdata           (data_sram_rdata),
      .data_sram_data_ok         (data_sram_data_ok),

    .flush_sign (flush_sign3_from_wb),
    .mem_flush  (flush_from_mem)

);


assign {
  csr_era_in     , //32
  csr_esubcode_in, //9
  csr_ecode_in   , //6
  csr_wr_en   , //1
  csr_wr_addr , //14
  csr_wr_data , //32
  csr_va_error_in    , //1
  csr_bad_va_in        // 32
  
} = wb_to_csr_bus;

  wb_stage u_wb_stage(
      .clk              (aclk),
      .resetn           (aresetn),

      .wb_allowin       (wb_allowin),
      .mem_to_wb_valid  (mem_to_wb_valid),
      .mem_to_wb_bus    (mem_to_wb_bus),

      .wb_to_id_bus     (wb_to_id_bus),

      .excp_flush   (excp_flush   ),
      .ertn_flush   (ertn_flush   ),
      .refetch_flush(refetch_flush),

      .wb_to_csr_bus(wb_to_csr_bus),

      .debug_wb_pc      (debug_wb_pc),
      .debug_wb_rf_we  (debug_wb_rf_we),
      .debug_wb_rf_wnum (debug_wb_rf_wnum),
      .debug_wb_rf_wdata(debug_wb_rf_wdata)

);

  //axi
  axi_bridge u_axi_bridge (
      .clk              (aclk),
      .aresetn          (aresetn),
      .arid             (arid),
      .araddr           (araddr),
      .arlen            (arlen),
      .arsize           (arsize),
      .arburst          (arburst),
      .arlock           (arlock),
      .arcache          (arcache),
      .arprot           (arprot),
      .arvalid          (arvalid),
      .arready          (arready),
      .rid              (rid),
      .rdata            (rdata),
      .rresp            (rresp),
      .rlast            (rlast),
      .rvalid           (rvalid),
      .rready           (rready),
      .awid             (awid),
      .awaddr           (awaddr),
      .awlen            (awlen),
      .awsize           (awsize),
      .awburst          (awburst),
      .awlock           (awlock),
      .awcache          (awcache),
      .awprot           (awprot),
      .awvalid          (awvalid),
      .awready          (awready),
      .wid              (wid),
      .wdata            (wdata),
      .wstrb            (wstrb),
      .wlast            (wlast),
      .wvalid           (wvalid),
      .wready           (wready),
      .bid              (bid),
      .bresp            (bresp),
      .bvalid           (bvalid),
      .bready           (bready),


      .inst_sram_req    (inst_sram_req),
      .inst_sram_wr     (inst_sram_wr),
      .inst_sram_size   (inst_sram_size),
      .inst_sram_wstrb  (inst_sram_wstrb),
      .inst_sram_addr   (inst_sram_addr),
      .inst_sram_wdata  (inst_sram_wdata),
      .inst_sram_addr_ok(inst_sram_addr_ok),
      .inst_sram_data_ok(inst_sram_data_ok),
      .inst_sram_rdata  (inst_sram_rdata),
    
      .data_sram_req    (data_sram_req),
      .data_sram_wr     (data_sram_wr),
      .data_sram_size   (data_sram_size),
      .data_sram_wstrb   (data_sram_wstrb),
      .data_sram_addr   (data_sram_addr),
      .data_sram_wdata  (data_sram_wdata),
      .data_sram_addr_ok(data_sram_addr_ok),
      .data_sram_data_ok(data_sram_data_ok),
      .data_sram_rdata  (data_sram_rdata)
  );


endmodule
