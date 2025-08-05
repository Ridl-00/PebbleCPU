// `timescale 1ns / 1ps
`include "defines.v"

module exe_stage (
    input wire clk,
    input wire resetn,

    //id_exe
    output wire exe_allowin,
    input wire id_to_exe_valid,
    input wire [`ID_TO_EXE_WD] id_to_exe_bus,

    //exe_mem
    input wire mem_allowin,
    output wire exe_to_mem_valid,
    output wire [`EXE_TO_MEM_WD] exe_to_mem_bus,

    input wire [`CSR_TO_EXE_WD] csr_to_exe_bus,
    output wire                 cache_v,

    //从后向前的数据传输（均是组合逻辑）
    output wire [`EXE_TO_ID_WD] exe_to_id_bus,

    input wire    excp_flush      ,
    input wire    ertn_flush      ,
    input wire    refetch_flush   ,
    input wire    flush_from_mem  ,

    output wire        data_sram_req,
    output wire        data_sram_wr,
    output wire [ 3:0] data_sram_wstrb,
    output wire [31:0] data_sram_addr,
    output wire [31:0] data_sram_wdata,
    input  wire        data_sram_addr_ok

);

//=========================================================================================
//========================== Parameter and Internal signals ===============================
//=========================================================================================
//当前stage控制信号
  reg exe_valid;
  wire exe_ready_go;
  reg [`ID_TO_EXE_WD] exe_data;

  wire [`AluOpBus] exe_alu_op      ;
  wire        exe_src1_is_pc  ;
  wire        exe_src2_is_imm ; 
  wire        exe_src2_is_4   ;
  wire        exe_gr_we       ;
  wire        exe_store_op    ;
  wire [ 4:0] exe_dest        ;
  wire [31:0] exe_imm         ;
  wire [31:0] exe_pc          ;
  wire [ 3:0] exe_mul_div_op  ;
  wire [ 1:0] exe_mem_size    ;
  wire [31:0] exe_csr_data    ;
  wire [13:0] exe_csr_idx     ;
  wire [31:0] exe_csr_result  ;
  wire [31:0] csr_mask_result;
  wire        exe_res_from_csr;
  wire        exe_csr_we      ;
  wire        exe_csr_mask    ;
  wire        exe_excp        ;
  wire        excp           ;
  wire [ 8:0] exe_excp_num    ;
  wire [ 9:0] excp_num       ;
  wire        exe_ertn        ;
  wire        exe_mul_enable  ;
  wire        exe_div_enable;
  wire        div_stall      ;
  // wire        exe_ll_w        ;
  // wire        exe_sc_w        ;
  // wire        exe_tlbsrch     ;
  // wire        exe_tlbwr       ;
  // wire        exe_tlbfill     ;
  // wire        exe_tlbrd       ;
  // wire        exe_refetch     ;
  // wire        exe_invtlb      ;
  // wire [ 9:0] exe_invtlb_asid ;
  // wire [18:0] exe_invtlb_vpn  ;
  // wire        exe_cacop       ;
  // wire        exe_preld       ;
  // wire        exe_br_inst     ;
  // wire        exe_icache_miss ;
  // wire        exe_idle        ;

wire [31:0] error_va      ;

wire        exe_load_op     ;

//前递和阻塞
  wire        dep_need_stall ;
  wire        forward_enable ;
  wire        dest_zero      ;

  wire        excp_ale       ; //地址对齐异常

  wire        flush_sign     ;

  wire        access_mem      ; //读写ram使能
  wire        exe_mem_sign_exted; //有符号的操作
  wire [ 1:0] sram_addr_low2bit;

// wire        tlbsrch_stall  ;

// wire [31:0] pv_addr        ;

// wire [ 4:0] cacop_op        ;

// wire        dcache_req_or_inst_en;

// wire        icacop_inst      ;
// wire        icacop_inst_stall;
// wire        dcacop_inst      ;
// wire        preld_inst       ;

// wire        exe_br_pre_error  ;
// wire        exe_br_pre        ;

// difftest
// wire [31:0] exe_inst         ;
// wire [63:0] exe_timer_64     ;
// wire        exe_cnt_inst     ;
// wire [ 7:0] exe_inst_ld_en   ;
// wire [ 7:0] exe_inst_st_en   ;
// wire        exe_csr_rstat_en ;

//alu
  wire [31:0] exe_alu_src1   ;
  wire [31:0] exe_alu_src2   ;
  wire [31:0] exe_alu_result ;
  wire [31:0] exe_result    ;


  wire        exe_mul_div_sign ;
  wire [31:0] exe_rj_value     ;
  wire [31:0] exe_rkd_value    ;
  wire div_complete;


//csr
  wire  [`InstAddrBus] p_data_sram_addr;
  wire  [ 1:0]  crmd_plv ;
  wire  [ 1:0]  crmd_datm;
  wire          csr_da       ;
  wire          csr_pg       ;
  wire  [31:0]  csr_dmw1     ;
  wire  [31:0]  csr_dmw0     ;
//mmu
  wire  dmw0_plv0;
  wire  dmw0_plv3;
  assign dmw0_plv0 = csr_dmw0[0];
  assign dmw0_plv3 = csr_dmw0[3];

  wire  dmw1_plv0;
  wire  dmw1_plv3;
  assign dmw1_plv0 = csr_dmw1[0];
  assign dmw1_plv3 = csr_dmw1[3];

assign {
    crmd_plv ,//2
    crmd_datm,   //2 
    csr_da   ,//1
    csr_pg   ,//1
    csr_dmw1 , //32
    csr_dmw0  //32
} = csr_to_exe_bus;



//======================================================
//=================== Main Code ====================
//======================================================
  assign exe_ready_go = (!div_stall && !mul_stall && (!(access_mem)||(data_sram_req && data_sram_addr_ok)))|| excp;
  assign exe_allowin = ~exe_valid | exe_ready_go & mem_allowin;
  assign exe_to_mem_valid = exe_valid && exe_ready_go && !flush_sign;

  assign access_mem = exe_load_op || exe_store_op;

  assign flush_sign  = excp_flush || ertn_flush || refetch_flush /*|| icacop_flush || idle_flush*/;
  
  always @(posedge clk) begin
    if (~resetn || flush_sign) begin
      exe_valid <= 1'b0;
    end else if (exe_allowin) begin
      exe_valid <= id_to_exe_valid;
    end
  end

  always @(posedge clk) begin
    if (exe_allowin && id_to_exe_valid) begin
      exe_data <= id_to_exe_bus;
    end
  end

// exe_mul_div_op[ 0] = inst_mul_w;
// exe_mul_div_op[ 1] = inst_mulh_w | inst_mulh_wu;
// exe_mul_div_op[ 2] = inst_div_w  | inst_div_wu;
// exe_mul_div_op[ 3] = inst_mod_w  | inst_mod_wu;

  //访存接口
assign sram_addr_low2bit = {exe_alu_result[1], exe_alu_result[0]};
                                                                //前向后有例外不行&有csr来的例外不行&有mem来的例外不行
                                                                //需要保证当前在wb和mem的指令都不造成flush，否则会错误的req
  assign data_sram_req = exe_valid & access_mem & mem_allowin & ~excp & ~flush_sign & ~flush_from_mem; //追究allowin，参考inst_req
  
  assign data_sram_wr = exe_valid & exe_store_op & ~excp & ~flush_sign & ~flush_from_mem ;
  //mem_size={h, b}
  assign data_sram_wstrb = {4{exe_valid}} & {4{exe_store_op}}
                      & (exe_mem_size == 2'b01 ? 
                         ({4{sram_addr_low2bit == 2'b00}} & 4'b0001 |
                          {4{sram_addr_low2bit == 2'b01}} & 4'b0010 |
                          {4{sram_addr_low2bit == 2'b10}} & 4'b0100 |
                          {4{sram_addr_low2bit == 2'b11}} & 4'b1000 
                      ):(exe_mem_size == 2'b10 ?
                         ({4{sram_addr_low2bit == 2'b00}} & 4'b0011 |
                          {4{sram_addr_low2bit == 2'b10}} & 4'b1100)
                      :(exe_mem_size == 2'b00 ? 4'b1111 : 4'b0000)));

  assign data_sram_addr = p_data_sram_addr;
  assign data_sram_wdata = exe_mem_size==2'b01 ? {4{exe_rkd_value[7:0]}} : 
                          exe_mem_size==2'b10 ? {2{exe_rkd_value[15:0]}} :
                                                      exe_rkd_value;


//alu
  assign exe_alu_src1 = exe_src1_is_pc ? exe_pc : exe_rj_value;
                                        
  assign exe_alu_src2 = (exe_src2_is_imm) ? exe_imm : 
                      (exe_src2_is_4)   ? 32'd4  : exe_rkd_value;

  assign exe_div_enable = (exe_mul_div_op[2] | exe_mul_div_op[3]) & exe_valid;
  assign exe_mul_enable = (exe_mul_div_op[0] | exe_mul_div_op[1]) & exe_valid;

alu u_alu(
    .alu_op     (exe_alu_op    ),
    .alu_src1   (exe_alu_src1  ),
    .alu_src2   (exe_alu_src2  ),
    .alu_result (exe_alu_result)
    );

  // //mul
  // wire [63:0] exe_mul_result;
  // wire [63:0] mul_result_signed, mul_result_unsigned;

  // assign mul_result_unsigned = exe_rj_value * exe_rkd_value;
  // assign mul_result_signed = $signed(exe_rj_value) * $signed(exe_rkd_value);
  // assign exe_mul_result = exe_mul_div_sign ? mul_result_signed : mul_result_unsigned;


  //div
  assign div_stall     = exe_div_enable & ~div_complete;//除法暂停高有效
  wire [`RegBus] s;
  wire [`RegBus] r;
  div u_div (
      .div_clk       (clk),
      .resetn        (resetn),
      .div           (exe_div_enable),
      .div_signed    (exe_mul_div_sign),
      .x             (exe_rj_value),
      .y             (exe_rkd_value),
      .s             (s),
      .r             (r),
      .complete_delay(div_complete)
  );


//乘法器
    reg flush_reg;

    always @(posedge clk) begin
        flush_reg <= flush_sign;
    end

  //mul
  wire [65:0] exe_mul_result;

    reg  [1:0]  state_mul;
    reg  [1:0]  next_state_mul;

    always @(posedge clk) begin
        if(~resetn)
            state_mul <= 2'h0;
        else if(flush_reg)
            state_mul <= 2'h0;
        else state_mul <= next_state_mul;
    end
    always @(*) begin
        case(state_mul)
        2'h0:    next_state_mul = (exe_valid && exe_mul_enable) ? 2'h1 : 2'h0;
        2'h1:    next_state_mul = 2'h2;
        2'h2:    next_state_mul = 2'h0;
        // 2'h3:    next_state_mul = 2'h0;
        endcase
    end
    assign mul_stall = ~(next_state_mul == 2'h0);

  // wire [65:0] mul_prod;
    mul33_3cycle MUL(
      .clk(clk),
      .x({(exe_mul_div_sign &  exe_rj_value[31]),exe_rj_value}),
      .y({(exe_mul_div_sign & exe_rkd_value[31]),exe_rkd_value}),
      .res(exe_mul_result)
    );

assign exe_result = exe_res_from_csr  ? exe_csr_data :
                    exe_mul_div_op[0] ? exe_mul_result[31:0] : 
                    exe_mul_div_op[1] ? exe_mul_result[63:32]:
                    exe_mul_div_op[2] ? s:
                    exe_mul_div_op[3] ? r:
                    exe_alu_result ;//！这里把alu的结果放在最后面了或许会慢，但目前没有直接判断是alu操作的方法！

//前递和阻塞
assign dest_zero            = (exe_dest == 5'b0); 
assign forward_enable       = exe_gr_we & ~dest_zero & exe_valid;
assign dep_need_stall       = exe_load_op || div_stall || mul_stall; //如果是load，需要等load在exe的操作，接着等load在mem的操作

//异常处理excp
assign excp_ale        = access_mem & ((exe_mem_size[0] &  1'b0)                                   | 
                                       (exe_mem_size[1] &  exe_alu_result[0])                      | 
                                       (!exe_mem_size   & (exe_alu_result[0] | exe_alu_result[1]))) ;
                                
assign excp            = exe_excp || excp_ale;
assign excp_num        = {excp_ale, exe_excp_num};

assign error_va = exe_alu_result; //把alu结果（地址）存一下，如果出错了它就是出错的地址

//csr mask
assign csr_mask_result = (exe_rj_value & exe_rkd_value) | (~exe_rj_value & exe_csr_data);
assign exe_csr_result   = exe_csr_mask ? csr_mask_result : exe_rkd_value;

//mmu-data
  //地址翻译addr_i=>addr_o
    wire [2:0] addr_head_i;
    assign addr_head_i = exe_alu_result[31:29];

    wire [2:0] dmw0_vseg,dmw0_pseg,dmw1_vseg,dmw1_pseg;
    assign dmw0_vseg = csr_dmw0[31:29];
    assign dmw0_pseg = csr_dmw0[27:25];
    assign dmw1_vseg = csr_dmw1[31:29];
    assign dmw1_pseg = csr_dmw1[27:25];

    wire dmw0_hit,dmw1_hit;
    assign dmw0_hit = ((crmd_plv == 2'h3 && dmw0_plv3) || (crmd_plv == 2'h0 && dmw0_plv0)) && (addr_head_i == dmw0_vseg);
    assign dmw1_hit = ((crmd_plv == 2'h3 && dmw1_plv3) || (crmd_plv == 2'h0 && dmw1_plv0)) && (addr_head_i == dmw1_vseg);

    assign p_data_sram_addr = csr_da ? exe_alu_result                     :
                    csr_pg && dmw0_hit ? {dmw0_pseg, exe_alu_result[28:0]} :
                    csr_pg && dmw1_hit ? {dmw1_pseg, exe_alu_result[28:0]} :
                    32'b0;

  //存储访问控制逻辑dmw/tlb
    wire [1:0] dmw0_mat,dmw1_mat,page_mat;
    assign dmw0_mat = csr_dmw0[5:4];
    assign dmw1_mat = csr_dmw1[5:4];

    // assign page_uncache = 1'b0;//暂时不考虑tlb页表缓存

    wire uncache ;
    assign uncache = csr_da            ? crmd_datm == 2'b00 :
                    csr_pg && dmw0_hit ? dmw0_mat == 2'b00  :
                    csr_pg && dmw1_hit ? dmw1_mat == 2'b00  :
                    //   tlb_s0_found ? tlb_s0_mat == 2'b00 :
                        1'b0;

    assign cache_v = ~uncache;


//id-exe
assign {
        exe_mem_sign_exted,  //218:218
        exe_excp_num      ,  //217:209
        exe_csr_mask      ,  //208:208
        exe_csr_we        ,  //207:207
        exe_csr_idx       ,  //206:193
        exe_res_from_csr  ,  //192:192
        exe_csr_data      ,  //191:160
        exe_ertn          ,  //159:159
        exe_excp          ,  //158:158
        exe_mem_size      ,  //157:156
        exe_mul_div_op    ,  //155:152
        exe_mul_div_sign  ,  //151:151
        exe_alu_op        ,  //150:139
        exe_load_op       ,  //138:138
        exe_src1_is_pc    ,  //137:137
        exe_src2_is_imm   ,  //136:136
        exe_src2_is_4     ,  //135:135
        exe_gr_we         ,  //134:134
        exe_store_op      ,  //133:133
        exe_dest          ,  //132:128
        exe_imm           ,  //127:96
        exe_rj_value      ,  //95 :64
        exe_rkd_value     ,  //63 :32
        exe_pc               //31 :0
    } = exe_data;

assign exe_to_id_bus = {dep_need_stall ,  //38:38
                        forward_enable ,  //37:37
                        exe_dest        ,  //36:32
                        exe_result         //31:0
                       };

assign exe_to_mem_bus = {
                       error_va          ,  //169:138
                       exe_mem_sign_exted,  //137:137
                       exe_store_op      ,  //136:136
                       excp_num          ,  //135:126
                       exe_csr_we        ,  //125:125
                       exe_csr_idx       ,  //124:111
                       exe_csr_result    ,  //110:79
                       exe_ertn          ,  //78:78
                       excp              ,  //77:77
                       exe_mem_size      ,  //76:75
                       exe_mul_div_op    ,  //74:71
                       exe_load_op       ,  //70:70
                       exe_gr_we         ,  //69:69
                       exe_dest          ,  //68:64
                       exe_result        ,  //63:32
                       exe_pc               //31:0
                      };

endmodule