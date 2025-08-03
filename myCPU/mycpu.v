`include "defines.v"

module mycpu_core(
    input wire      aclk,
    input wire      aresetn,
    input wire[7:0] int,
    //类SRAM
    output                      inst_sram_req,
    output                      inst_sram_wr,
    output [               3:0] inst_sram_wstrb,
    output [               1:0] inst_sram_size,
    output [              31:0] inst_sram_addr,
    output [              31:0] inst_sram_wdata,
    input [              31:0] inst_sram_rdata,
    input                      inst_sram_addr_ok,
    input                      inst_sram_data_ok,

    output                      data_sram_req,
    output                      data_sram_wr,
    output [               3:0] data_sram_wstrb,
    output [               1:0] data_sram_size,
    output [              31:0] data_sram_addr,
    output [              31:0] data_sram_wdata,
    input [              31:0] data_sram_rdata,
    input                      data_sram_addr_ok,
    input                      data_sram_data_ok,

    output wire [ `CSR_TO_MMU_WD] csr_to_mmu_bus,

    //debug
    output wire [31:0] debug_wb_pc,
    output wire [ 3:0] debug_wb_rf_we,
    output wire [ 4:0] debug_wb_rf_wnum,
    output wire [31:0] debug_wb_rf_wdata
);

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


wire                           excp_flush    ;
wire                           ertn_flush    ;
wire                           refetch_flush ;
wire                           flush_from_mem;

//csr
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

assign csr_to_mmu_bus={
  csr_da_out,
  csr_pg_out,
  csr_dmw1_out,
  csr_dmw0_out
};

  csr u_csr(
        .clk                (aclk),
        .resetn             (aresetn),

        .csr_to_if_bus      (csr_to_if_bus    ),
        .csr_to_id_bus      (csr_to_id_bus    ),

        .id_to_csr_bus      (id_to_csr_bus    ),
        .wb_to_csr_bus      (wb_to_csr_bus    ),
        
        .interrupt          (int              ),
        // .has_int            (csr_has_int      ),
        
        .excp_flush         (excp_flush       ),
        .ertn_flush         (ertn_flush       ),
        // .era_in             (csr_era_in       ),
        // .esubcode_in        (csr_esubcode_in  ),
        // .ecode_in           (csr_ecode_in     ),
        // .va_error_in        (csr_va_error_in  ),
        // .bad_va_in          (csr_bad_va_in    ),
        //未实现的无效信号
        .tlbsrch_en         (0/*csr_tlbsrch_en*/   ),
        .tlbsrch_found      (0/*csr_tlbsrch_found*/),
        .tlbsrch_index      (0/*csr_tlbsrch_index*/),
        .excp_tlbrefill     (0/*csr_excp_tlbrefill*/),
        .excp_tlb           (0/*csr_excp_tlb     */),
        .excp_tlb_vppn      (0/*csr_excp_tlb_vppn*/),
        
        .llbit_in           (0/*csr_llbit_in     */),
        .llbit_set_in       (0/*csr_llbit_set_in */),
        .lladdr_in          (0/*csr_lladdr_in    */),
        .lladdr_set_in      (0/*csr_lladdr_set_in*/),
        
        .llbit_out          (csr_llbit_out    ),
        .vppn_out           (csr_vppn_out     ),

        .lladdr_out         (csr_lladdr_out   ),

        // .eentry_out         (csr_eentry_out   ),
        // .era_out            (csr_era_out      ),
        .tlbrentry_out      (csr_tlbrentry_out),
        .disable_cache_out  (csr_disable_cache),

        .asid_out           (csr_asid_out     ),
        .rand_index         (csr_rand_index   ),
        .tlbehi_out         (csr_tlbehi_out   ),
        .tlbelo0_out        (csr_tlbelo0_out  ),
        .tlbelo1_out        (csr_tlbelo1_out  ),
        .tlbidx_out         (csr_tlbidx_out   ),
        //tlbmmu用
        .pg_out             (csr_pg_out       ),
        .da_out             (csr_da_out       ),
        .dmw0_out           (csr_dmw0_out     ),
        .dmw1_out           (csr_dmw1_out     ),
        //
        .datf_out           (csr_datf_out     ),
        .datm_out           (csr_datm_out     ),
        .ecode_out          (csr_ecode_out    ),

        .tlbrd_en           (0/*csr_tlbrd_en  */   ),
        .tlbehi_in          (0/*csr_tlbehi_in */   ),
        .tlbelo0_in         (0/*csr_tlbelo0_in*/   ),
        .tlbelo1_in         (0/*csr_tlbelo1_in*/   ),
        .tlbidx_in          (0/*csr_tlbidx_in */   ),
        .asid_in            (0/*csr_asid_in   */   ),

        .plv_out            (csr_plv_out      )
    );

  if_stage u_if_stage (
      .clk              (aclk),
      .resetn           (aresetn),

      .id_allowin       (id_allowin),
      .if_to_id_valid   (if_to_id_valid),
      .if_to_id_bus     (if_to_id_bus),

      .excp_flush       (excp_flush   ),
      .ertn_flush       (ertn_flush   ),
      .refetch_flush    (refetch_flush),

      .id_to_if_bus     (id_to_if_bus),
      .csr_to_if_bus    (csr_to_if_bus),

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
  
      .excp_flush               (excp_flush   ),
      .ertn_flush               (ertn_flush   ),
      .refetch_flush            (refetch_flush),

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

      .excp_flush                (excp_flush   ),
      .ertn_flush                (ertn_flush   ),
      .refetch_flush             (refetch_flush),
      .flush_from_mem            (flush_from_mem),

      .data_sram_req             (data_sram_req),
      .data_sram_wr              (data_sram_wr),
      .data_sram_wstrb           (data_sram_wstrb),
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

      .excp_flush                (excp_flush   ),
      .ertn_flush                (ertn_flush   ),
      .refetch_flush             (refetch_flush),
      .flush_from_mem            (flush_from_mem)
);

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

endmodule
