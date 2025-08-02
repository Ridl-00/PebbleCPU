// `timescale 1ns / 1ps
`include "defines.v"

module mem_stage(
    input                              clk           ,
    input                              resetn        ,

    //exe-mem
    output wire mem_allowin,
    input wire exe_to_mem_valid,
    input wire [`EXE_TO_MEM_WD] exe_to_mem_bus,

    //mem-wb
    input wire wb_allowin,
    output wire mem_to_wb_valid,
    output wire [`MEM_TO_WB_WD] mem_to_wb_bus,

    //从后向前的数据传输（均是组合逻辑）
    output wire [`MEM_TO_ID_WD] mem_to_id_bus,

    //dataRAM读数据
    input [31:0] data_sram_rdata,
    input        data_sram_data_ok,

    input wire  excp_flush        ,
    input wire  ertn_flush        ,
    input wire  refetch_flush     ,
    output wire  flush_from_mem

);
//======================================================
//======== Parameter and Internal signals ==========
//======================================================
//当前stage控制信号
  reg mem_valid;
  wire mem_ready_go;
  reg [`EXE_TO_MEM_WD] mem_data;

//exe-mem
wire        dep_need_stall;
wire [ 3:0] mem_mul_div_op;
wire [ 1:0] sram_addr_low2bit;
wire [ 1:0] mem_mem_size;
wire        mem_load_op;
wire        mem_gr_we;
wire [`RegAddrBus] mem_dest;
wire [`RegBus] mem_exe_result;
wire [`InstAddrBus] mem_pc;
wire        mem_excp;
wire [ 9:0] mem_excp_num;
wire        mem_ertn;
wire [31:0] mem_csr_result;
wire [13:0] mem_csr_idx;
wire        mem_csr_we;
// wire        mem_ll_w;
// wire        mem_sc_w;
wire        mem_store_op;
// wire        mem_tlbsrch;
// wire        mem_tlbfill;
// wire        mem_tlbwr;
// wire        mem_tlbrd;
// wire        mem_refetch;
// wire        mem_invtlb;
// wire [ 9:0] mem_invtlb_asid;
// wire [18:0] mem_invtlb_vpn;
wire        mem_mem_sign_exted;
// wire        mem_icacop_op_en;
// wire        mem_br_inst;
// wire        mem_icache_miss;
// wire        mem_br_pre;
// wire        mem_br_pre_error;
// wire        mem_preld_inst;
// wire        mem_cacop;
// wire        mem_idle;
wire [31:0] mem_error_va;

// // difftest
// wire        mem_cnt_inst     ;
// wire [63:0] mem_timer_64     ;
// wire [31:0] mem_inst         ;
// wire [ 7:0] mem_inst_ld_en   ;
// wire [31:0] mem_ld_paddr     ;
// wire [31:0] mem_ld_vaddr     ;
// wire [ 7:0] mem_inst_st_en   ;
// wire [31:0] mem_st_data      ;
// wire        mem_csr_rstat_en ;
// wire [31:0] mem_csr_data     ;

wire [31:0] mem_result;
wire [31:0] mem_final_result;
wire        flush_sign;

wire [31:0] mem_rdata;
// reg  [31:0] data_rd_buff;
// reg         data_buff_enable;

wire        access_mem;

// wire [ 4:0] cacop_op;
// wire [ 1:0] cacop_op_mode;


wire        dest_zero;

// wire [31:0] paddr;

wire [15:0] excp_num;
wire        excp;

// wire        excp_tlbr;
// wire        excp_pil ;
// wire        excp_pis ;
// wire        excp_pme ;
// wire        excp_ppi ; 

// wire        da_mode  ;
// wire        pg_mode  ;

// wire        sc_addr_eq;


//前递和阻塞
//mem-id
wire        forward_enable;



//======================================================
//=================== Main Code ====================
//======================================================
//当前stage控制信号
//不需要访存，或要访存且访存完成，或有异常（此级及之前的 级有异常，那么这条指令无效，自然没必要等访存）
  assign mem_ready_go = /*(data_data_ok || data_buff_enable) || */ (!access_mem) || (access_mem & data_sram_data_ok)|| excp /*|| sc_cancel_req*/;
  assign mem_allowin = ~mem_valid | mem_ready_go & wb_allowin;
  assign mem_to_wb_valid = mem_ready_go & mem_valid & !flush_sign;

assign mem_to_id_valid = mem_valid;

//exe-mem
  always @(posedge clk) begin
    if (~resetn | flush_sign) begin
      mem_valid <= 1'b0;
    end else if (mem_allowin) begin
      mem_valid <= exe_to_mem_valid;
    end
  end

always @(posedge clk) begin
  if (mem_allowin & exe_to_mem_valid) begin
    mem_data <= exe_to_mem_bus;
  end
  // else begin
  //   mem_data <= 'b0;
  // end
end

assign access_mem = mem_store_op || mem_load_op;

assign flush_sign = excp_flush || ertn_flush || refetch_flush /*|| icacop_flush || idle_flush*/;

// assign mem_rdata = data_buff_enable ? data_rd_buff : data_rdata;
assign mem_rdata = data_sram_rdata;

assign sram_addr_low2bit = {mem_exe_result[1], mem_exe_result[0]};

wire [7:0] mem_byteLoaded = ({8{sram_addr_low2bit==2'b00}} & mem_rdata[ 7: 0]) |
                            ({8{sram_addr_low2bit==2'b01}} & mem_rdata[15: 8]) |
                            ({8{sram_addr_low2bit==2'b10}} & mem_rdata[23:16]) |
                            ({8{sram_addr_low2bit==2'b11}} & mem_rdata[31:24]) ; 
                                                            
wire [15:0] mem_halfLoaded = ({16{sram_addr_low2bit==2'b00}} & mem_rdata[15: 0]) |
                             ({16{sram_addr_low2bit==2'b10}} & mem_rdata[31:16]) ;

assign mem_result = ({32{mem_mem_size[0] &&  mem_mem_sign_exted}} & {{24{mem_byteLoaded[ 7]}}, mem_byteLoaded}) |
                    ({32{mem_mem_size[0] && ~mem_mem_sign_exted}} & { 24'b0                  , mem_byteLoaded}) |
                    ({32{mem_mem_size[1] &&  mem_mem_sign_exted}} & {{16{mem_halfLoaded[15]}}, mem_halfLoaded}) |
                    ({32{mem_mem_size[1] && ~mem_mem_sign_exted}} & { 16'b0                  , mem_halfLoaded}) |
                    ({32{mem_mem_size==2'b00}}                         &   mem_rdata                                  ) ;

//要写的数据
assign mem_final_result = ({32{mem_load_op      }} & mem_result       )  |
                          ({32{!mem_load_op}} & mem_exe_result);

//forward仅表示是否当级是否有需要写寄存器的指令（不标识当前写的数据是否正确。
  //即，即使当前级并未生成有效数据，也需要为其提供一个前递的位置
//dep_need_stall用于阻塞流水线，等待当级生成有效数据
assign dest_zero            = (mem_dest == 5'b0);
assign forward_enable       = mem_gr_we & ~dest_zero & mem_valid;
assign dep_need_stall       = mem_load_op & !data_sram_data_ok;

//exception
assign excp = /*excp_tlbr || excp_pil || excp_pis || excp_ppi || excp_pme || */mem_excp;
// assign excp_num = {excp_pil, excp_pis, excp_ppi, excp_pme, excp_tlbr, 1'b0, mem_excp_num};
assign excp_num = {1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, mem_excp_num};

assign flush_from_mem = (excp | mem_ertn | (mem_csr_we /*| (mem_ll_w | mem_sc_w) & !excp*/) /*| mem_refetch | mem_idle*/) & mem_valid;


//exe-mem
assign {
        // mem_csr_data      ,  //424:393  for difftest
        // mem_csr_rstat_en  ,  //392:392  for difftest
        // mem_st_data       ,  //391:360  for difftest
        // mem_inst_st_en    ,  //359:352  for difftest
        // mem_ld_vaddr      ,  //351:320  for difftest
        // mem_inst_ld_en    ,  //319:312  for difftest
        // mem_cnt_inst      ,  //311:311  for difftest
        // mem_timer_64      ,  //310:247  for difftest
        // mem_inst          ,  //246:215  for difftest
        mem_error_va      ,  //214:183
        // mem_idle          ,  //182:182
        // mem_cacop         ,  //181:181
        // mem_preld_inst    ,  //180:180
        // mem_br_pre_error  ,  //179:179
        // mem_br_pre        ,  //178:178
        // mem_icache_miss   ,  //177:177
        // mem_br_inst       ,  //176:176
        // mem_icacop_op_en  ,  //175:175
        mem_mem_sign_exted,  //174:174
        // mem_invtlb_vpn    ,  //173:155
        // mem_invtlb_asid   ,  //154:145
        // mem_invtlb        ,  //144:144
        // mem_tlbrd         ,  //143:143
        // mem_refetch       ,  //142:142
        // mem_tlbfill       ,  //141:141
        // mem_tlbwr         ,  //140:140
        // mem_tlbsrch       ,  //139:139
        mem_store_op      ,  //138:138
        // mem_sc_w          ,  //137:137
        // mem_ll_w          ,  //136:136
        mem_excp_num      ,  //135:126
        mem_csr_we        ,  //125:125
        mem_csr_idx       ,  //124:111
        mem_csr_result    ,  //110:79
        mem_ertn          ,  //78:78
        mem_excp          ,  //77:77
        mem_mem_size      ,  //76:75
        mem_mul_div_op    ,  //74:71
        mem_load_op       ,  //70:70
        mem_gr_we         ,  //69:69
        mem_dest          ,  //68:64
        mem_exe_result    ,  //63:32
        mem_pc               //31:0
} = mem_data;

//mem-wb
assign mem_to_wb_bus = {
                    //    mem_csr_data    ,  //492:461 for difftest
                    //    mem_csr_rstat_en,  //460:460 for difftest
                    //    mem_st_data     ,  //459:428 for difftest
                    //    mem_inst_st_en  ,  //427:420 for difftest
                    //    mem_ld_vaddr    ,  //419:388 for difftest
                    //    mem_ld_paddr    ,  //387:356 for difftest
                    //    mem_inst_ld_en  ,  //355:348 for difftest
                    //    mem_cnt_inst    ,  //347:347 for difftest
                    //    mem_timer_64    ,  //346:283 for difftest
                    //    mem_inst        ,  //282:251 for difftest
					//    data_uncache_en,  //250:250
					//    paddr          ,  //249:218
                    //    mem_idle        ,  //217:217
                    //    mem_br_pre_error,  //216:216
                    //    mem_br_pre      ,  //215:215
                    //    dcache_miss    ,  //214:214
                       access_mem     ,  //213:213
                    //    mem_icache_miss ,  //212:212
                    //    mem_br_inst     ,  //211:211
                    //    mem_icacop_op_en,  //210:210
                    //    mem_invtlb_vpn  ,  //209:191
                    //    mem_invtlb_asid ,  //190:181
                    //    mem_invtlb      ,  //180:180
                    //    mem_tlbrd       ,  //179:179
                    //    mem_refetch     ,  //178:178
                    //    mem_tlbfill     ,  //177:177
                    //    mem_tlbwr       ,  //176:176
                    //    data_tlb_index ,  //175:171
                    //    data_tlb_found ,  //170:170
                    //    mem_tlbsrch     ,  //169:169
                       mem_error_va    ,  //168:137
                    //    mem_sc_w        ,  //136:136
                    //    mem_ll_w        ,  //135:135
                       excp_num       ,  //134:119
                       mem_csr_we      ,  //118:118
                       mem_csr_idx     ,  //117:104
                       mem_csr_result  ,  //103:72
                       mem_ertn        ,  //71:71
                       excp           ,  //70:70
                       mem_gr_we       ,  //69:69
                       mem_dest        ,  //68:64
                       mem_final_result,  //63:32
                       mem_pc             //31:0
                      };

//mem-id
assign mem_to_id_bus = {dep_need_stall,  //38:38
                               forward_enable,  //37:37
                               mem_dest       ,  //36:32
                               mem_final_result  //31:0
                              };
endmodule