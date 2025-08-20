`include "defines.v"
module core_top(
    input wire aclk,
    input wire aresetn,
    input wire[7:0] intrpt,

    output wire[3:0]   arid,
    output wire[31:0]  araddr,
    output wire[3:0]   arlen,
    output wire[2:0]   arsize,
    output wire[1:0]   arburst,
    output wire[1:0]   arlock,
    output wire[3:0]   arcache,
    output wire[2:0]   arprot,
    output wire        arvalid,
    input  wire        arready,

    input  wire[3:0]   rid,
    input  wire[31:0]  rdata,
    input  wire[1:0]   rresp,
    input  wire        rlast,
    input  wire        rvalid,
    output wire        rready,

    output wire[3:0]   awid,
    output wire[31:0]  awaddr,
    output wire[3:0]   awlen,
    output wire[2:0]   awsize,
    output wire[1:0]   awburst,
    output wire[1:0]   awlock,
    output wire[3:0]   awcache,
    output wire[2:0]   awprot,
    output wire        awvalid,
    input  wire        awready,

    output wire[3:0]   wid,
    output wire[31:0]  wdata,
    output wire[3:0]   wstrb,
    output wire        wlast,
    output wire        wvalid,
    input  wire        wready,

    input  wire[3:0]   bid,
    input  wire[1:0]   bresp,
    input  wire        bvalid,
    output wire        bready,

    //debug
    input           break_point,//无需实现功能，仅提供接口即可，输入1’b0
    input           infor_flag,//无需实现功能，仅提供接口即可，输入1’b0
    input  [ 4:0]   reg_num,//无需实现功能，仅提供接口即可，输入5’b0
    output          ws_valid,//无需实现功能，仅提供接口即可
    output [31:0]   rf_rdata,//无需实现功能，仅提供接口即可

    output wire [31:0] debug0_wb_pc,
    output wire [3 :0] debug0_wb_rf_wen,
    output wire [4 :0] debug0_wb_rf_wnum,
    output wire [31:0] debug0_wb_rf_wdata 
);
    wire clk = aclk;
    wire rst = ~aresetn;

    wire if_allowin;
    wire id_allowin;
    wire exe_allowin;
    wire mem_allowin;
    wire wb_allowin;
    wire preif_to_if_valid;
    wire if_to_id_valid;
    wire id_to_exe_valid;
    wire exe_to_mem_valid;
    wire mem_to_wb_valid;

  wire [`PREIF_TO_IF_WD] preif_to_if_bus;
  wire [  `IF_TO_ID_WD] if_to_id_bus;
  wire [  `ID_TO_PREIF_WD] id_to_preif_bus;
  wire [ `ID_TO_EXE_WD] id_to_exe_bus;
  wire [`EXE_TO_MEM_WD] exe_to_mem_bus;
  wire [ `MEM_TO_WB_WD] mem_to_wb_bus;
  wire [  `WB_TO_ID_WD] wb_to_id_bus;
  wire [ `EXE_TO_ID_WD] exe_to_id_bus;
  wire [ `MEM_TO_ID_WD] mem_to_id_bus;

  wire [ `CSR_TO_PREIF_WD] csr_to_preif_bus;
  wire [ `CSR_TO_ID_WD] csr_to_id_bus;
  wire [`CSR_TO_EXE_WD] csr_to_exe_bus;
  wire [ `ID_TO_CSR_WD] id_to_csr_bus;
  wire [ `WB_TO_CSR_WD] wb_to_csr_bus;


  wire excp_flush    ;
  wire ertn_flush    ;
  wire refetch_flush ;
  wire flush_from_mem;
  wire br_really_taken;

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

    wire inst_sram_en;
    wire [3:0] inst_sram_we;
    wire [31:0] inst_sram_addr;
    wire [31:0] inst_sram_wdata;
    wire [31:0] inst_sram_rdata;

    wire data_sram_en;
    wire data_sram_wr; //unused
    wire [3:0] data_sram_we;
    wire [31:0] data_sram_addr;
    wire [31:0] data_sram_wdata;
    wire [31:0] data_sram_rdata;

//cache & uncache
    wire inst_cached, data_cached;

     // cache_top
    wire icache_refresh, dcache_refresh;
    wire icache_miss, dcache_miss;
    wire [31:0] icache_raddr, dcache_raddr;
    wire icache_write_back, dcache_write_back;
    wire [31:0] icache_waddr, dcache_waddr;
    wire [`CACHELINE_WIDTH-1:0] icache_cacheline_old, dcache_cacheline_old;
    wire [`CACHELINE_WIDTH-1:0] icache_cacheline_new, dcache_cacheline_new;
    wire icache_addr_ok, dcache_addr_ok, uncache_addr_ok;
    wire icache_data_ok, dcache_data_ok, uncache_data_ok;

    // uncache
    wire        uncache_refresh;
    wire        uncache_en;
    wire [3:0]  uncache_wen;
    wire [31:0] uncache_addr;
    wire [31:0] uncache_wdata;
    wire [31:0] uncache_rdata;
    wire        uncache_hit;

    wire [31:0] dcache_temp_rdata ;
    wire [31:0] uncache_temp_rdata;
//-------------------------------stage & csr---------------------------------
  csr u_csr(
        .clk                (aclk),
        .resetn             (aresetn),

        .csr_to_preif_bus   (csr_to_preif_bus ),
        .csr_to_id_bus      (csr_to_id_bus    ),
        .csr_to_exe_bus     (csr_to_exe_bus   ),

        .id_to_csr_bus      (id_to_csr_bus    ),
        .wb_to_csr_bus      (wb_to_csr_bus    ),
        
        .interrupt          (intrpt           ),
        .excp_flush         (excp_flush       ),
        .ertn_flush         (ertn_flush       ),

        //tlb-mmu地址翻译信号
        .pg_out             (csr_pg_out       ),
        .da_out             (csr_da_out       ),
        .dmw0_out           (csr_dmw0_out     ),
        .dmw1_out           (csr_dmw1_out     ),

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

          .tlbrentry_out      (csr_tlbrentry_out),
          .disable_cache_out  (csr_disable_cache),

          .asid_out           (csr_asid_out     ),
          .rand_index         (csr_rand_index   ),
          .tlbehi_out         (csr_tlbehi_out   ),
          .tlbelo0_out        (csr_tlbelo0_out  ),
          .tlbelo1_out        (csr_tlbelo1_out  ),
          .tlbidx_out         (csr_tlbidx_out   ),

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

//   if_stage u_if_stage (
//       .clk              (aclk),
//       .resetn           (aresetn),

//       .id_allowin       (id_allowin),
//       .if_to_id_valid   (if_to_id_valid),
//       .if_to_id_bus     (if_to_id_bus),

//       .excp_flush       (excp_flush   ),
//       .ertn_flush       (ertn_flush   ),
//       .refetch_flush    (refetch_flush),

//       .id_to_if_bus     (id_to_if_bus),
//       .csr_to_if_bus    (csr_to_if_bus),

//       .cache_v          (inst_cached       ),

//       .inst_sram_req    (inst_sram_en),
//       .inst_sram_wstrb  (inst_sram_we),
//       .inst_sram_addr   (inst_sram_addr),
//       .inst_sram_wdata  (inst_sram_wdata),
//       .inst_sram_rdata  (inst_sram_rdata),
//       .inst_sram_addr_ok(icache_addr_ok),
//       .inst_sram_data_ok(icache_data_ok)
// );

  preif_stage u_preif_stage (
      .clk              (aclk),
      .resetn           (aresetn),

      .if_allowin       (if_allowin),
      .preif_to_if_valid   (preif_to_if_valid),
      .preif_to_if_bus     (preif_to_if_bus),

      .id_to_preif_bus     (id_to_preif_bus),
      .csr_to_preif_bus    (csr_to_preif_bus),
      .cache_v          (inst_cached       ),

      .inst_sram_req    (inst_sram_en),
      .inst_sram_wstrb  (inst_sram_we),
      .inst_sram_addr   (inst_sram_addr),
      .inst_sram_wdata  (inst_sram_wdata),
      .inst_sram_addr_ok(icache_addr_ok),

      .excp_flush       (excp_flush   ),
      .ertn_flush       (ertn_flush   ),
      .refetch_flush    (refetch_flush)
);

  if_stage2 u_if_stage2 (
      .clk              (aclk),
      .resetn           (aresetn),

      .if_allowin       (if_allowin),
      .preif_to_if_valid   (preif_to_if_valid),
      .preif_to_if_bus     (preif_to_if_bus),

      .id_allowin       (id_allowin),
      .if_to_id_valid   (if_to_id_valid),
      .if_to_id_bus     (if_to_id_bus),

      .br_really_taken  (br_really_taken),

      .inst_sram_rdata  (inst_sram_rdata),
      .inst_sram_data_ok(icache_data_ok),

      .excp_flush       (excp_flush   ),
      .ertn_flush       (ertn_flush   ),
      .refetch_flush    (refetch_flush)      
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

      .id_to_preif_bus          (id_to_preif_bus),
      .br_flush          (br_really_taken),
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

      .csr_to_exe_bus            (csr_to_exe_bus   ),
      .exe_to_id_bus             (exe_to_id_bus),
      .cache_v                   (data_cached       ),

      .excp_flush                (excp_flush   ),
      .ertn_flush                (ertn_flush   ),
      .refetch_flush             (refetch_flush),
      .flush_from_mem            (flush_from_mem),

      .data_sram_req             (data_sram_en),
      .data_sram_wr              (data_sram_wr),
      .data_sram_wstrb           (data_sram_we),
      .data_sram_addr            (data_sram_addr),
      .data_sram_wdata           (data_sram_wdata),
      .data_sram_addr_ok         (dcache_addr_ok|uncache_addr_ok)
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

      .data_cached               (data_cached       ),
      .dcache_temp_rdata         (dcache_temp_rdata ),
      .uncache_temp_rdata        (uncache_temp_rdata),
      .dcache_data_ok            (dcache_data_ok),
      .uncache_data_ok           (uncache_data_ok),

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

      .debug_wb_pc            (debug0_wb_pc       ),
      .debug_wb_rf_we         (debug0_wb_rf_wen   ),
      .debug_wb_rf_wnum       (debug0_wb_rf_wnum  ),
      .debug_wb_rf_wdata      (debug0_wb_rf_wdata )
);
//------------------------------cache & uncache------------------------------

  cache u_icache(
      .clk           (clk           ),
      .rst           (rst           ),
      .sram_en       (inst_sram_en       ),
      .sram_wen      (inst_sram_we      ),
      .sram_addr     (inst_sram_addr     ),
      .sram_wdata    (inst_sram_wdata    ),
      .refresh       (icache_refresh     ),
      .cached        (1'b1               ),
      .cacheline_new (icache_cacheline_new ),

      .addr_ok       (icache_addr_ok),
      .data_ok       (icache_data_ok),
      .sram_rdata    (inst_sram_rdata    ),
      .miss          (icache_miss          ),
      .raddr         (icache_raddr         ),
      .waddr         (icache_waddr         ),
      .write_back    (icache_write_back    ),
      .cacheline_old (icache_cacheline_old )
  );
  cache u_dcache(
      .clk           (clk           ),
      .rst           (rst           ),
      .sram_en       (data_sram_en & data_cached),
      .sram_wen      (data_sram_we      ),
      .sram_addr     (data_sram_addr     ),
      .sram_wdata    (data_sram_wdata    ),
      .refresh       (dcache_refresh       ),
      .cached        (data_cached        ),
      .cacheline_new (dcache_cacheline_new ),

      .addr_ok       (dcache_addr_ok),
      .data_ok       (dcache_data_ok),
      .sram_rdata    (dcache_temp_rdata    ),
      .miss          (dcache_miss          ),
      .raddr         (dcache_raddr         ),
      .waddr         (dcache_waddr         ),
      .write_back    (dcache_write_back    ),
      .cacheline_old (dcache_cacheline_old )
  );
  
  
  uncache u_uncache(
        .clk        (clk                        ),
        .rst        (rst                        ),
        .addr_ok    (uncache_addr_ok),
        .data_ok    (uncache_data_ok),
        .conf_en    (data_sram_en & ~data_cached),
        .conf_wen   (data_sram_we              ),
        .conf_addr  (data_sram_addr             ),
        .conf_wdata (data_sram_wdata            ),
        .conf_rdata (uncache_temp_rdata         ), 
        .axi_en     (uncache_en                 ),
        .axi_wsel   (uncache_wen                ),
        .axi_addr   (uncache_addr               ),
        .axi_wdata  (uncache_wdata              ),
        .refresh    (uncache_refresh            ),
        .axi_rdata  (uncache_rdata              )
  );

//--------------------------------axi control----------------------------------
    
    axi_control u_axi_control(
        .clk                  (clk                  ),
        .rst                  (rst                  ),
        
        .icache_ren           (icache_miss          ),
        .icache_raddr         (icache_raddr         ),
        .icache_cacheline_new (icache_cacheline_new ),
        .icache_wen           (icache_write_back    ),
        .icache_waddr         (icache_waddr         ),
        .icache_cacheline_old (icache_cacheline_old ),
        .icache_refresh       (icache_refresh       ),
        
        .dcache_ren           (dcache_miss          ),
        .dcache_raddr         (dcache_raddr         ),
        .dcache_cacheline_new (dcache_cacheline_new ),
        .dcache_wen           (dcache_write_back    ),
        .dcache_waddr         (dcache_waddr         ),
        .dcache_cacheline_old (dcache_cacheline_old ),
        .dcache_refresh       (dcache_refresh       ),
        
        .uncache_en           (uncache_en           ),
        .uncache_wen          (uncache_wen          ),
        .uncache_addr         (uncache_addr         ),
        .uncache_wdata        (uncache_wdata        ),
        .uncache_rdata        (uncache_rdata        ),
        .uncache_refresh      (uncache_refresh      ),

        .arid                 (arid                 ),
        .araddr               (araddr               ),
        .arlen                (arlen                ),
        .arsize               (arsize               ),
        .arburst              (arburst              ),
        .arlock               (arlock               ),
        .arcache              (arcache              ),
        .arprot               (arprot               ),
        .arvalid              (arvalid              ),
        .arready              (arready              ),
        .rid                  (rid                  ),
        .rdata                (rdata                ),
        .rresp                (rresp                ),
        .rlast                (rlast                ),
        .rvalid               (rvalid               ),
        .rready               (rready               ),
        .awid                 (awid                 ),
        .awaddr               (awaddr               ),
        .awlen                (awlen                ),
        .awsize               (awsize               ),
        .awburst              (awburst              ),
        .awlock               (awlock               ),
        .awcache              (awcache              ),
        .awprot               (awprot               ),
        .awvalid              (awvalid              ),
        .awready              (awready              ),
        .wid                  (wid                  ),
        .wdata                (wdata                ),
        .wstrb                (wstrb                ),
        .wlast                (wlast                ),
        .wvalid               (wvalid               ),
        .wready               (wready               ),
        .bid                  (bid                  ),
        .bresp                (bresp                ),
        .bvalid               (bvalid               ),
        .bready               (bready               )
    );
    
    

endmodule 