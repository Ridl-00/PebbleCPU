// `timescale 1ns / 1ps
`include "defines.v"

module wb_stage (
    input wire clk,
    input wire resetn,

    //mem-wb
    output wire wb_allowin,
    input wire mem_to_wb_valid,
    input wire [`MEM_TO_WB_WD] mem_to_wb_bus,

    //wb-id(rf)
    output wire [`WB_TO_ID_WD] wb_to_id_bus,

    //exception
    output wire       excp_flush                       ,
    output wire       ertn_flush                       ,
    output wire       refetch_flush                    ,
    // output wire       icacop_flush                     ,

    output wire [`WB_TO_CSR_WD]    wb_to_csr_bus  ,

    //debug trace
    output wire [31:0] debug_wb_pc,
    output wire [ 3:0] debug_wb_rf_we,
    output wire [ 4:0] debug_wb_rf_wnum,
    output wire [31:0] debug_wb_rf_wdata
);
//=========================================================================================
//========================== Parameter and Internal signals ===============================
//=========================================================================================
//当前stage控制信号
  reg wb_valid;
  wire wb_ready_go;
  reg [`MEM_TO_WB_WD] wb_data;

wire        flush_sign;

//mem-wb
  //拆解wb_reg数据
wire        wb_gr_we;
wire        wb_excp;
wire [15:0] wb_excp_num;
wire        wb_ertn;
wire [ 4:0] wb_dest;
wire [31:0] wb_final_result;
wire [31:0] wb_pc;
wire [31:0] wb_csr_result;
wire [13:0] wb_csr_idx;
wire        wb_csr_we;
// wire        wb_ll_w;
// wire        wb_sc_w;
wire [31:0] wb_error_va;
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

wire real_valid; 

wire         rf_we   ;
wire  [4:0 ] rf_waddr;
wire  [31:0] rf_wdata;

//wb-csr
    wire [31:0] csr_era                          ;
    wire [ 8:0] csr_esubcode                     ;
    wire [ 5:0] csr_ecode                        ;
    wire        csr_wr_en                        ;
    wire [13:0] wr_csr_addr                      ;
    wire [31:0] wr_csr_data                      ;
    wire        va_error                         ;
    wire [31:0] bad_va                           ;

assign wb_to_csr_bus = {
  csr_era     , //32
  csr_esubcode, //9
  csr_ecode   , //6
  csr_wr_en   , //1
  wr_csr_addr , //14
  wr_csr_data , //32
  va_error    , //1
  bad_va        // 32
};

//==============================================================================================
//======================================== Main Code ===========================================
//==============================================================================================
//当前stage控制信号
  assign wb_allowin  = ~wb_valid || wb_ready_go;
  assign wb_ready_go = 1'b1;  //写回寄存器堆在一拍之内一定可以完成


  always @(posedge clk) begin
    if (~resetn || flush_sign) begin
      wb_valid <= 1'b0;
    end else if (wb_allowin) begin
      wb_valid <= mem_to_wb_valid;
    end
  end

always @(posedge clk) begin
    if (wb_allowin & mem_to_wb_valid) begin
      wb_data <= mem_to_wb_bus;
    end
end

assign flush_sign = excp_flush || ertn_flush || refetch_flush/* || icacop_flush || idle_flush*/;

assign excp_flush   = wb_excp && wb_valid;
assign ertn_flush   = wb_ertn && real_valid;
assign refetch_flush = (wb_csr_we /*|| ((wb_ll_w || wb_sc_w) && !wb_excp) || wb_refetch*/) && wb_valid;

assign csr_era      = wb_pc;
assign csr_wr_en    = wb_csr_we && real_valid;
assign wr_csr_addr  = wb_csr_idx;
assign wr_csr_data  = wb_csr_result; 


//exception have piority, onle one exception is valid 
// assign {csr_ecode, //6
//         va_error, //1
//         bad_va,  //32
//         csr_esubcode//, //9
//         /*excp_tlbrefill,
//         excp_tlb, 
//         excp_tlb_vppn*/} = wb_excp_num[ 0] ? {`ECODE_INT , 1'b0    , 32'b0      , 9'b0         /* , 1'b0    , 1'b0    , 19'b0   */          } :
//                          wb_excp_num[ 1] ? {`ECODE_ADEF, wb_valid, wb_pc      , `ESUBCODE_ADEF/*, 1'b0    , 1'b0    , 19'b0      */       } :
//                          wb_excp_num[ 2] ? {`ECODE_TLBR, wb_valid, wb_pc      , 9'b0          /*, ws_valid, ws_valid, ws_pc[31:13]      */} :
//                          wb_excp_num[ 3] ? {`ECODE_PIF , wb_valid, wb_pc      , 9'b0          /*, 1'b0    , ws_valid, ws_pc[31:13]      */} :
//                          wb_excp_num[ 4] ? {`ECODE_PPI , wb_valid, wb_pc      , 9'b0          /*, 1'b0    , ws_valid, ws_pc[31:13]      */} :
//                          wb_excp_num[ 5] ? {`ECODE_SYS , 1'b0    , 32'b0      , 9'b0          /*, 1'b0    , 1'b0    , 19'b0             */} :
//                          wb_excp_num[ 6] ? {`ECODE_BRK , 1'b0    , 32'b0      , 9'b0          /*, 1'b0    , 1'b0    , 19'b0       */      } :
//                          wb_excp_num[ 7] ? {`ECODE_INE , 1'b0    , 32'b0      , 9'b0         /* , 1'b0    , 1'b0    , 19'b0          */   } :
//                          wb_excp_num[ 8] ? {`ECODE_IPE , 1'b0    , 32'b0      , 9'b0          /*, 1'b0    , 1'b0    , 19'b0             */} :   //close ipe excp now
//                          wb_excp_num[ 9] ? {`ECODE_ALE , wb_valid, wb_error_va, 9'b0          /*, 1'b0    , 1'b0    , 19'b0             */} :
//                          wb_excp_num[11] ? {`ECODE_TLBR, wb_valid, wb_error_va, 9'b0          /*, ws_valid, ws_valid, ws_error_va[31:13]*/} :
//                          wb_excp_num[12] ? {`ECODE_PME , wb_valid, wb_error_va, 9'b0          /*, 1'b0    , ws_valid, ws_error_va[31:13]*/} :
//                          wb_excp_num[13] ? {`ECODE_PPI , wb_valid, wb_error_va, 9'b0          /*, 1'b0    , ws_valid, ws_error_va[31:13]*/} :
//                          wb_excp_num[14] ? {`ECODE_PIS , wb_valid, wb_error_va, 9'b0          /*, 1'b0    , ws_valid, ws_error_va[31:13]*/} :
//                          wb_excp_num[15] ? {`ECODE_PIL , wb_valid, wb_error_va, 9'b0          /*, 1'b0    , ws_valid, ws_error_va[31:13]*/} :
//                          69'b0;

reg [47:0] excp_info;
always @(*) begin
    case (1'b1)
        wb_excp_num[0]:  excp_info = {`ECODE_INT , 1'b0     , 32'b0       , 9'b0};
        wb_excp_num[1]:  excp_info = {`ECODE_ADEF, wb_valid , wb_pc       , `ESUBCODE_ADEF};
        wb_excp_num[2]:  excp_info = {`ECODE_TLBR, wb_valid , wb_pc       , 9'b0};
        wb_excp_num[3]:  excp_info = {`ECODE_PIF , wb_valid , wb_pc       , 9'b0};
        wb_excp_num[4]:  excp_info = {`ECODE_PPI , wb_valid , wb_pc       , 9'b0};
        wb_excp_num[5]:  excp_info = {`ECODE_SYS , 1'b0     , 32'b0       , 9'b0};
        wb_excp_num[6]:  excp_info = {`ECODE_BRK , 1'b0     , 32'b0       , 9'b0};
        wb_excp_num[7]:  excp_info = {`ECODE_INE , 1'b0     , 32'b0       , 9'b0};
        wb_excp_num[8]:  excp_info = {`ECODE_IPE , 1'b0     , 32'b0       , 9'b0};
        wb_excp_num[9]:  excp_info = {`ECODE_ALE , wb_valid , wb_error_va , 9'b0};
        wb_excp_num[11]: excp_info = {`ECODE_TLBR, wb_valid , wb_error_va , 9'b0};
        wb_excp_num[12]: excp_info = {`ECODE_PME , wb_valid , wb_error_va , 9'b0};
        wb_excp_num[13]: excp_info = {`ECODE_PPI , wb_valid , wb_error_va , 9'b0};
        wb_excp_num[14]: excp_info = {`ECODE_PIS , wb_valid , wb_error_va , 9'b0};
        wb_excp_num[15]: excp_info = {`ECODE_PIL , wb_valid , wb_error_va , 9'b0};
        default:        excp_info = 69'b0;
    endcase
end
assign {csr_ecode, va_error, bad_va, csr_esubcode} = excp_info;

assign {
        wb_access_mem  ,  //167:167
        wb_error_va    ,  //166:135
        wb_excp_num    ,  //134:119
        wb_csr_we      ,  //118:118
        wb_csr_idx     ,  //117:104
        wb_csr_result  ,  //103:72
        wb_ertn        ,  //71:71
        wb_excp        ,  //70:70
        wb_gr_we       ,  //69:69
        wb_dest        ,  //68:64
        wb_final_result,  //63:32
        wb_pc             //31:0
    } = wb_data;


assign real_valid = wb_valid && !wb_excp;

assign rf_we    = wb_gr_we && real_valid;
assign rf_waddr = wb_dest;
assign rf_wdata = wb_final_result;

//wb-id(rf)
  assign wb_to_id_bus   = {
                            rf_we,     //64:64
                            rf_waddr,  //63:32
                            rf_wdata   //31:0
                            };
assign  debug_wb_pc        = wb_pc      ;
assign  debug_wb_rf_we     = {4{rf_we}} ;
assign  debug_wb_rf_wnum   = rf_waddr   ;
assign  debug_wb_rf_wdata  = rf_wdata   ;
endmodule