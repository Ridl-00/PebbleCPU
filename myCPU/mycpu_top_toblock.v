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

module mycpu_top
   (clk,
    data_sram_addr,
    data_sram_en,
    data_sram_rdata,
    data_sram_wdata,
    data_sram_we,
    debug_wb_pc,
    debug_wb_rf_wdata,
    debug_wb_rf_we,
    debug_wb_rf_wnum,
    inst_sram_addr,
    inst_sram_en,
    inst_sram_rdata,
    inst_sram_wdata,
    inst_sram_we,
    resetn);

  input clk;
  output [31:0]data_sram_addr;
  output data_sram_en;
  input [31:0]data_sram_rdata;
  output [31:0]data_sram_wdata;
  output [3:0]data_sram_we;
  output [31:0]debug_wb_pc;
  output [31:0]debug_wb_rf_wdata;
  output [3:0]debug_wb_rf_we;
  output [4:0]debug_wb_rf_wnum;
  output [31:0]inst_sram_addr;
  output inst_sram_en;
  input [31:0]inst_sram_rdata;
  output [31:0]inst_sram_wdata;
  output [3:0]inst_sram_we;
  input resetn;

  wire Net;
  wire Net1;
  wire clk_1;
  wire [31:0]csr_0_eentry_out;
  wire [31:0]csr_0_era_out;
  wire csr_0_has_int;
  wire [1:0]csr_0_plv_out;
  wire [31:0]csr_0_rd_data;
  wire [31:0]csr_0_tid_out;
  wire [63:0]csr_0_timer_64_out;
  wire [31:0]data_sram_rdata_1;
  wire [31:0]exe_stage_0_data_sram_addr;
  wire exe_stage_0_data_sram_en;
  wire [31:0]exe_stage_0_data_sram_wdata;
  wire [3:0]exe_stage_0_data_sram_we;
  wire exe_stage_0_exe_allowin;
  wire [38:0]exe_stage_0_exe_to_id_bus;
  wire [169:0]exe_stage_0_exe_to_mem_bus;
  wire exe_stage_0_exe_to_mem_valid;
  wire id_stage_0_id_allowin;
  wire [220:0]id_stage_0_id_to_exe_bus;
  wire id_stage_0_id_to_exe_valid;
  wire [33:0]id_stage_0_id_to_if_bus;
  wire [13:0]id_stage_0_rd_csr_addr;
  wire [68:0]if_stage_0_if_to_id_bus;
  wire if_stage_0_if_to_id_valid;
  wire [31:0]if_stage_0_inst_sram_addr;
  wire if_stage_0_inst_sram_en;
  wire [31:0]if_stage_0_inst_sram_wdata;
  wire [3:0]if_stage_0_inst_sram_we;
  wire [31:0]inst_sram_rdata_1;
  wire mem_stage_0_mem_allowin;
  wire mem_stage_0_mem_flush;
  wire [38:0]mem_stage_0_mem_to_id_bus;
  wire [167:0]mem_stage_0_mem_to_wb_bus;
  wire mem_stage_0_mem_to_wb_valid;
  wire resetn_1;
  wire [31:0]wb_stage_0_bad_va;
  wire [5:0]wb_stage_0_csr_ecode;
  wire [31:0]wb_stage_0_csr_era;
  wire [8:0]wb_stage_0_csr_esubcode;
  wire wb_stage_0_csr_wr_en;
  wire [31:0]wb_stage_0_debug_wb_pc;
  wire [31:0]wb_stage_0_debug_wb_rf_wdata;
  wire [3:0]wb_stage_0_debug_wb_rf_we;
  wire [4:0]wb_stage_0_debug_wb_rf_wnum;
  wire wb_stage_0_refetch_flush;
  wire wb_stage_0_va_error;
  wire wb_stage_0_wb_allowin;
  wire [64:0]wb_stage_0_wb_to_id_bus;
  wire [13:0]wb_stage_0_wr_csr_addr;
  wire [31:0]wb_stage_0_wr_csr_data;

  assign clk_1 = clk;
  assign data_sram_addr[31:0] = exe_stage_0_data_sram_addr;
  assign data_sram_en = exe_stage_0_data_sram_en;
  assign data_sram_rdata_1 = data_sram_rdata[31:0];
  assign data_sram_wdata[31:0] = exe_stage_0_data_sram_wdata;
  assign data_sram_we[3:0] = exe_stage_0_data_sram_we;
  assign debug_wb_pc[31:0] = wb_stage_0_debug_wb_pc;
  assign debug_wb_rf_wdata[31:0] = wb_stage_0_debug_wb_rf_wdata;
  assign debug_wb_rf_we[3:0] = wb_stage_0_debug_wb_rf_we;
  assign debug_wb_rf_wnum[4:0] = wb_stage_0_debug_wb_rf_wnum;
  assign inst_sram_addr[31:0] = if_stage_0_inst_sram_addr;
  assign inst_sram_en = if_stage_0_inst_sram_en;
  assign inst_sram_rdata_1 = inst_sram_rdata[31:0];
  assign inst_sram_wdata[31:0] = if_stage_0_inst_sram_wdata;
  assign inst_sram_we[3:0] = if_stage_0_inst_sram_we;
  assign resetn_1 = resetn;
  csr u_csr
       (.asid_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .bad_va_in(wb_stage_0_bad_va),
        .clk(clk_1),
        .csr_wr_en(wb_stage_0_csr_wr_en),
        .ecode_in(wb_stage_0_csr_ecode),
        .eentry_out(csr_0_eentry_out),
        .era_in(wb_stage_0_csr_era),
        .era_out(csr_0_era_out),
        .ertn_flush(Net1),
        .esubcode_in(wb_stage_0_csr_esubcode),
        .excp_flush(Net),
        .excp_tlb(1'b0),
        .excp_tlb_vppn({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .excp_tlbrefill(1'b0),
        .has_int(csr_0_has_int),
        .interrupt({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .lladdr_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .lladdr_set_in(1'b0),
        .llbit_in(1'b0),
        .llbit_set_in(1'b0),
        .plv_out(csr_0_plv_out),
        .rd_addr(id_stage_0_rd_csr_addr),
        .rd_data(csr_0_rd_data),
        .resetn(resetn_1),
        .tid_out(csr_0_tid_out),
        .timer_64_out(csr_0_timer_64_out),
        .tlbehi_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tlbelo0_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tlbelo1_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tlbidx_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tlbrd_en(1'b0),
        .tlbsrch_en(1'b0),
        .tlbsrch_found(1'b0),
        .tlbsrch_index({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .va_error_in(wb_stage_0_va_error),
        .wr_addr(wb_stage_0_wr_csr_addr),
        .wr_data(wb_stage_0_wr_csr_data));
  exe_stage u_exe_stage
       (.clk(clk_1),
        .data_sram_addr(exe_stage_0_data_sram_addr),
        .data_sram_en(exe_stage_0_data_sram_en),
        .data_sram_wdata(exe_stage_0_data_sram_wdata),
        .data_sram_we(exe_stage_0_data_sram_we),
        .ertn_flush(Net1),
        .excp_flush(Net),
        .exe_allowin(exe_stage_0_exe_allowin),
        .exe_to_id_bus(exe_stage_0_exe_to_id_bus),
        .exe_to_mem_bus(exe_stage_0_exe_to_mem_bus),
        .exe_to_mem_valid(exe_stage_0_exe_to_mem_valid),
        .flush_from_mem(mem_stage_0_mem_flush),
        .id_to_exe_bus(id_stage_0_id_to_exe_bus),
        .id_to_exe_valid(id_stage_0_id_to_exe_valid),
        .mem_allowin(mem_stage_0_mem_allowin),
        .refetch_flush(wb_stage_0_refetch_flush),
        .resetn(resetn_1));
  id_stage u_id_stage
       (.clk(clk_1),
        .csr_plv(csr_0_plv_out),
        .csr_tid(csr_0_tid_out),
        .ertn_flush(Net1),
        .excp_flush(Net),
        .exe_allowin(exe_stage_0_exe_allowin),
        .exe_to_id_bus(exe_stage_0_exe_to_id_bus),
        .has_int(csr_0_has_int),
        .id_allowin(id_stage_0_id_allowin),
        .id_to_exe_bus(id_stage_0_id_to_exe_bus),
        .id_to_exe_valid(id_stage_0_id_to_exe_valid),
        .id_to_if_bus(id_stage_0_id_to_if_bus),
        .if_to_id_bus(if_stage_0_if_to_id_bus),
        .if_to_id_valid(if_stage_0_if_to_id_valid),
        .mem_to_id_bus(mem_stage_0_mem_to_id_bus),
        .rd_csr_addr(id_stage_0_rd_csr_addr),
        .rd_csr_data(csr_0_rd_data),
        .refetch_flush(wb_stage_0_refetch_flush),
        .resetn(resetn_1),
        .timer_64(csr_0_timer_64_out),
        .wb_to_rf_bus(wb_stage_0_wb_to_id_bus));
  if_stage u_if_stage
       (.clk(clk_1),
        .csr_eentry(csr_0_eentry_out),
        .csr_era(csr_0_era_out),
        .csr_plv(csr_0_plv_out),
        .ertn_flush(Net1),
        .excp_flush(Net),
        .has_int(csr_0_has_int),
        .id_allowin(id_stage_0_id_allowin),
        .id_to_if_bus(id_stage_0_id_to_if_bus),
        .if_to_id_bus(if_stage_0_if_to_id_bus),
        .if_to_id_valid(if_stage_0_if_to_id_valid),
        .inst_sram_addr(if_stage_0_inst_sram_addr),
        .inst_sram_en(if_stage_0_inst_sram_en),
        .inst_sram_rdata(inst_sram_rdata_1),
        .inst_sram_wdata(if_stage_0_inst_sram_wdata),
        .inst_sram_we(if_stage_0_inst_sram_we),
        .refetch_flush(wb_stage_0_refetch_flush),
        .resetn(resetn_1),
        .wb_pc(wb_stage_0_csr_era));
  mem_stage u_mem_stage
       (.clk(clk_1),
        .data_sram_rdata(data_sram_rdata_1),
        .ertn_flush(Net1),
        .excp_flush(Net),
        .exe_to_mem_bus(exe_stage_0_exe_to_mem_bus),
        .exe_to_mem_valid(exe_stage_0_exe_to_mem_valid),
        .mem_allowin(mem_stage_0_mem_allowin),
        .mem_flush(mem_stage_0_mem_flush),
        .mem_to_id_bus(mem_stage_0_mem_to_id_bus),
        .mem_to_wb_bus(mem_stage_0_mem_to_wb_bus),
        .mem_to_wb_valid(mem_stage_0_mem_to_wb_valid),
        .refetch_flush(wb_stage_0_refetch_flush),
        .resetn(resetn_1),
        .wb_allowin(wb_stage_0_wb_allowin));
  wb_stage u_wb_stage
       (.bad_va(wb_stage_0_bad_va),
        .clk(clk_1),
        .csr_ecode(wb_stage_0_csr_ecode),
        .csr_era(wb_stage_0_csr_era),
        .csr_esubcode(wb_stage_0_csr_esubcode),
        .csr_wr_en(wb_stage_0_csr_wr_en),
        .debug_wb_pc(wb_stage_0_debug_wb_pc),
        .debug_wb_rf_wdata(wb_stage_0_debug_wb_rf_wdata),
        .debug_wb_rf_we(wb_stage_0_debug_wb_rf_we),
        .debug_wb_rf_wnum(wb_stage_0_debug_wb_rf_wnum),
        .ertn_flush(Net1),
        .excp_flush(Net),
        .mem_to_wb_bus(mem_stage_0_mem_to_wb_bus),
        .mem_to_wb_valid(mem_stage_0_mem_to_wb_valid),
        .refetch_flush(wb_stage_0_refetch_flush),
        .resetn(resetn_1),
        .va_error(wb_stage_0_va_error),
        .wb_allowin(wb_stage_0_wb_allowin),
        .wb_to_id_bus(wb_stage_0_wb_to_id_bus),
        .wr_csr_addr(wb_stage_0_wr_csr_addr),
        .wr_csr_data(wb_stage_0_wr_csr_data));
endmodule
