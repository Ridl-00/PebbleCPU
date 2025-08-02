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

    wire inst_sram_en;
    wire [3:0] inst_sram_we;
    wire [31:0] inst_sram_addr;
    wire [31:0] inst_sram_wdata;
    wire [31:0] inst_sram_rdata;

    wire data_sram_en;
    wire [3:0] data_sram_we;
    wire [31:0] data_sram_addr;
    wire [31:0] data_sram_wdata;
    wire [31:0] data_sram_rdata;

    wire inst_cached, data_cached;
    wire [31:0] inst_sram_addr_o,data_sram_addr_o;

    wire [`CSR_TO_MMU_WD] csr_to_mmu_bus;

    mycpu_core u_mycpu_core(
        .aclk                    (clk),
        .aresetn                 (aresetn),
        .int                     (intrpt),

        .inst_sram_req          (inst_sram_en),
        // .inst_sram_wr           (),
        .inst_sram_wstrb        (inst_sram_we),
        // .inst_sram_size         (),
        .inst_sram_addr         (inst_sram_addr_o),
        .inst_sram_wdata        (inst_sram_wdata) ,
        .inst_sram_rdata        (inst_sram_rdata),
        .inst_sram_addr_ok      (icache_addr_ok),
        .inst_sram_data_ok      (icache_data_ok),
        .data_sram_req          (data_sram_en),
        .data_sram_wstrb        (data_sram_we  ),
        .data_sram_addr         (data_sram_addr_o),
        .data_sram_wdata        (data_sram_wdata),
        .data_sram_rdata        (data_sram_rdata),
        .data_sram_addr_ok      (dcache_addr_ok|uncache_addr_ok),
        .data_sram_data_ok      (dcache_data_ok|uncache_data_ok),
        .csr_to_mmu_bus         (csr_to_mmu_bus),

        .debug_wb_pc            (debug0_wb_pc       ),
        .debug_wb_rf_we         (debug0_wb_rf_wen   ),
        .debug_wb_rf_wnum       (debug0_wb_rf_wnum  ),
        .debug_wb_rf_wdata      (debug0_wb_rf_wdata )
    );

    mmu inst_mmu(
        .addr_i  (inst_sram_addr_o  ),
        .da_pg   (csr_to_mmu_bus[65:64]),
        .dmw0    (csr_to_mmu_bus[31:0]),
        .dmw1    (csr_to_mmu_bus[63:32]),
        .addr_o  (inst_sram_addr    ),
        .cache_v (inst_cached       )
    );

    mmu data_mmu(
        .addr_i  (data_sram_addr_o  ),
        .da_pg   (csr_to_mmu_bus[65:64]),
        .dmw0    (csr_to_mmu_bus[31:0]),
        .dmw1    (csr_to_mmu_bus[63:32]),
        .addr_o  (data_sram_addr    ),
        .cache_v (data_cached       )
    );
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

    wire [31:0] dcache_temp_rdata;
    wire [31:0] uncache_temp_rdata;

    assign data_sram_rdata = data_cached ? dcache_temp_rdata : uncache_temp_rdata;

    icache u_icache(
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

    dcache u_dcache(
        .clk           (clk           ),
        .rst           (rst           ),
        .sram_en       (data_sram_en       ),
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
        .reload     (uncache_refresh            ),
        .axi_rdata  (uncache_rdata              )
    );
    
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