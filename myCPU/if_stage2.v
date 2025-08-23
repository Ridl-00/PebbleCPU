// `timescale 1ns / 1ps
`include "defines.v"

module if_stage2 (
    input wire clk,
    input wire resetn,

    //preif-if
    output wire if_allowin,
    input wire preif_to_if_valid,
    input wire [`PREIF_TO_IF_WD] preif_to_if_bus,

    //if-id
    input wire id_allowin,
    output wire if_to_id_valid,
    output wire [`IF_TO_ID_WD] if_to_id_bus,

    // input wire [`ID_TO_IF_WD] id_to_if_bus,
    input         br_really_taken , //用于取消跳转导致无效的指令,类似flush

    input  [31:0] inst_sram_rdata,
    input         inst_sram_data_ok,

    input wire                 excp_flush   , //wb
    input wire                 ertn_flush   , //wb
    input wire                 refetch_flush  //wb 

);

//=========================================================================================
//========================== Parameter and Internal signals ===============================
//=========================================================================================
//当前stage控制信号
reg if_valid;  //当前流水级是否在处理指令
wire if_ready_go;  //if是否需要被阻塞
reg [`PREIF_TO_IF_WD] if_data;

wire [`InstAddrBus] if_pc;
wire         if_excp;
wire         if_excp_num;
 wire        pre_taken_o;    
 wire [31:0] pre_target_o ;

assign {
    pre_taken_o,
    pre_target_o,
    if_excp_num,
    if_excp,
    if_pc
} = if_data;

wire         excp;
wire [3:0]   excp_num;

wire         flush_sign;

//if-id
wire [      `InstBus] if_inst;

reg  [  `InstAddrBus] if_inst_r;  //IF阶段指令寄存器
reg                   if_inst_valid;

reg if_inst_cancel;

assign if_to_id_bus = {
        pre_taken_o,  //101
        pre_target_o, //100:69
        excp,         //68:68
        excp_num,     //67:64
        if_inst,      //63:32
        if_pc         //31:0
                      };

assign if_ready_go       = (inst_sram_data_ok || if_inst_valid ) || excp; //握手当拍或者有存下来的inst_r 且在等待data ok时（即使是需要被取消的）不应继续下去
assign if_allowin        = !if_valid || if_ready_go && id_allowin; //if级没有在处理指令 或 if不需要被阻塞且id允许if进入
assign if_to_id_valid    = if_valid && if_ready_go && !(if_inst_cancel || flush_sign || br_really_taken /*|| (br_taken_r && br_bus_r_valid)*/);


always @(posedge clk) begin
    if (resetn==`RstEnable || flush_sign || br_really_taken) begin
        if_valid <= `StageInvalid;
    end else if (if_allowin) begin
      if_valid <= preif_to_if_valid;
    end
end

always @(posedge clk) begin
    if (preif_to_if_valid && if_allowin) begin
        if_data <= preif_to_if_bus;
    end
end

assign if_inst = inst_sram_data_ok ? inst_sram_rdata : 
                 if_inst_valid     ? if_inst_r       : 
                 32'b0 ;
// 指令缓存：只存有效的指令。状态变化类同 if 的阶段状态
always @(posedge clk) begin
    if (~resetn || flush_sign || br_really_taken) begin
        if_inst_r <= 32'h0;
        if_inst_valid <= 1'b0;
    end
    // if inst valid if级进入下一步
    else if (preif_to_if_valid && if_allowin) begin
        if_inst_valid <= 1'b0;
    end
    //遇到 不是要被取消的dataok就存下来
    else if (inst_sram_data_ok && !if_inst_cancel) begin
        if_inst_r <= inst_sram_rdata;
        if_inst_valid <= 1'b1;
    end
end   

//cancel
always @ (posedge clk) begin
    if (~resetn) begin
        if_inst_cancel <= 1'b0;
    end
    //当前在需要丢弃状态，且等来了需要丢弃的data ok
    else if(if_inst_cancel && inst_sram_data_ok) begin
        if_inst_cancel <= 1'b0;
    end
    //需要取消当前级指令
    else if(flush_sign || br_really_taken) begin
        if(if_valid && !if_ready_go) begin
            if_inst_cancel <= 1'b1;
        end
    end
end

//csr
assign flush_sign = ertn_flush || excp_flush || refetch_flush /*|| icacop_flush || idle_flush*/;

endmodule