// `timescale 1ns / 1ps
`include "defines.v"

module wb_stage (
    input wire clk,
    input wire resetn,

    //mem-wb
    output wire wb_allowin,
    input wire mem_to_wb_valid,
    input wire [`MEM_TO_WB_WD] mem_to_wb_bus,

    ////wb-id(rf)
    output wire [`WB_TO_ID_WD] wb_to_id_bus,

    //debug trace
    output wire [31:0] debug_wb_pc,
    output wire [ 3:0] debug_wb_rf_we,
    output wire [ 4:0] debug_wb_rf_wnum,
    output wire [31:0] debug_wb_rf_wdata
);
//======================================================
//======== Parameter and Internal signals ==========
//======================================================
//当前stage控制信号
  reg wb_valid;
  wire wb_ready_go;
  reg [`MEM_TO_WB_WD] wb_data;

//mem-wb
  //拆解wb_reg数据
wire        wb_gr_we;
// wire        wb_excp;
// wire [15:0] wb_excp_num;
// wire        wb_ertn;
wire [ 4:0] wb_dest;
wire [31:0] wb_final_result;
wire [31:0] wb_pc;
// wire [31:0] wb_csr_result;
// wire [13:0] wb_csr_idx;
// wire        wb_csr_we;
// wire        wb_ll_w;
// wire        wb_sc_w;
// wire [31:0] wb_error_va;
// wire        wb_tlbsrch;
// wire        wb_tlbfill;
// wire        wb_tlbwr;
// wire        wb_tlbrd;
// wire        wb_refetch;
// wire        wb_invtlb;
// wire        wb_icacop_op_en;
// wire        wb_br_inst;
// wire        wb_icache_miss;
// wire        wb_access_mem;
// wire        wb_dcache_miss;
// wire        wb_br_pre;
// wire        wb_br_pre_error;
// wire        wb_idle;
// wire [31:0] wb_paddr;
// wire        wb_data_uc;





//======================================================
//=================== Main Code ====================
//======================================================
//当前stage控制信号
  assign wb_allowin  = ~wb_valid | wb_ready_go;

  assign wb_ready_go = 1'b1;  //写回寄存器堆在一拍之内一定可以完成

  always @(posedge clk) begin
    if (~resetn) begin
      wb_valid <= 1'b1;
    end else if (wb_allowin) begin
      wb_valid <= mem_to_wb_valid;
    end
  end

always @(posedge clk) begin
    if (wb_allowin & mem_to_wb_valid) begin
      wb_data <= mem_to_wb_bus;
    end
  // else begin
  //   wb_data <= 'b0;
  // end
end

assign {
    // wb_csr_data    ,  //492:461 for difftest
    //     wb_csr_rstat_en,  //460:460 for difftest
    //     wb_st_data     ,  //459:428 for difftest
    //     wb_inst_st_en  ,  //427:420 for difftest
    //     wb_ld_vaddr    ,  //419:388 for difftest
    //     wb_ld_paddr    ,  //387:356 for difftest
    //     wb_inst_ld_en  ,  //355:348 for difftest
    //     wb_cnt_inst    ,  //347:347 for difftest
    //     wb_timer_64    ,  //346:283 for difftest
    //     wb_inst        ,  //282:251 for difftest
	// 	wb_data_uc     ,  //250:250
	// 	wb_paddr       ,  //249:218
    //     wb_idle        ,  //217:217
    //     wb_br_pre_error,  //216:216
    //     wb_br_pre      ,  //215:215
    //     wb_dcache_miss ,  //214:214
    //     wb_access_mem  ,  //213:213
    //     wb_icache_miss ,  //212:212
    //     wb_br_inst     ,  //211:211
    //     wb_icacop_op_en,  //210:210
    //     invtlb_vpn     ,  //209:191
    //     invtlb_asid    ,  //190:181
    //     wb_invtlb      ,  //180:180
    //     wb_tlbrd       ,  //179:179
    //     wb_refetch     ,  //178:178
    //     wb_tlbfill     ,  //177:177
    //     wb_tlbwr       ,  //176:176
    //     tlbsrch_index  ,  //175:171
    //     tlbsrch_found  ,  //170:170
    //     wb_tlbsrch     ,  //169:169
    //     wb_error_va    ,  //168:137
    //     wb_sc_w        ,  //136:136
    //     wb_ll_w        ,  //135:135
    //     wb_excp_num    ,  //134:119
    //     wb_csr_we      ,  //118:118
    //     wb_csr_idx     ,  //117:104
    //     wb_csr_result  ,  //103:72
    //     wb_ertn        ,  //71:71
    //     wb_excp        ,  //70:70
        wb_gr_we       ,  //69:69
        wb_dest        ,  //68:64
        wb_final_result,  //63:32
        wb_pc             //31:0
    } = wb_data;

//wb-id(rf)
  assign wb_to_id_bus   = {
                            wb_gr_we,         //64:64
                            wb_dest,          //63:32
                            wb_final_result   //31:0
                            };
assign  debug_wb_pc        = wb_pc            ;
assign  debug_wb_rf_we     = {4{wb_gr_we}} &{4{wb_valid}}   ;
assign  debug_wb_rf_wnum   = wb_dest          ;
assign  debug_wb_rf_wdata  = wb_final_result  ;
endmodule