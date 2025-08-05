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
    // output                              exe_to_id_valid      ,//旁路要不要valid？每级到id的valid在ibar和dbar中使用

    input wire    excp_flush      ,
    input wire    ertn_flush      ,
    input wire    refetch_flush   ,
    input wire    flush_from_mem  ,


  //访dataRAM端口
    // output wire        data_sram_en,
    // output wire [ 3:0] data_sram_we,
    // output wire [31:0] data_sram_addr,
    // output wire [31:0] data_sram_wdata
    output wire        data_sram_req,
    output wire        data_sram_wr,
    output wire [ 3:0] data_sram_wstrb,
    output wire [ 1:0] data_sram_size,
    output wire [31:0] data_sram_addr,
    output wire [31:0] data_sram_wdata,
    input  wire        data_sram_addr_ok

);

//======================================================
//======== Parameter and Internal signals ==========
//======================================================
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
// wire [ 3:0] wr_byte_en     ;

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


//addr trans(cache)
wire  [`InstAddrBus] p_data_sram_addr;
wire  [ 1:0]  crmd_plv ;
wire  [ 1:0]  crmd_datm;
wire          csr_da       ;
wire          csr_pg       ;
wire  [31:0]  csr_dmw1     ;
wire  [31:0]  csr_dmw0     ;

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
// assign exe_ready_go    = (!div_stall & (/*(dcache_req_or_inst_en && data_addr_ok) ||*/ !(access_mem /*|| dcacop_inst || preld_inst*/)) /*&& !tlbsrch_stall && !icacop_inst_stall*/)/* || excp*/;
  assign exe_ready_go = (!div_stall && (!(access_mem)||(data_sram_req && data_sram_addr_ok)))|| excp;
  assign exe_allowin = ~exe_valid | exe_ready_go & mem_allowin;
  assign exe_to_mem_valid = exe_valid && exe_ready_go && !flush_sign;

// assign exe_to_ds_valid = exe_valid;

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
  // assign data_sram_en = exe_valid & access_mem & ~excp & ~flush_sign & ~flush_from_mem;
  assign data_sram_req = exe_valid & access_mem & mem_allowin & ~excp & ~flush_sign & ~flush_from_mem; //追究allowin，参考inst_req
  
  //|we
  assign data_sram_wr = exe_valid & exe_store_op & ~excp & ~flush_sign & ~flush_from_mem ;

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
//（诡异的转换
  assign data_sram_size = exe_mem_size == 2'b00 ? 2'b10 : 
                          exe_mem_size == 2'b10 ? 2'b01 : 2'b00;

  assign data_sram_addr = p_data_sram_addr;
assign data_sram_wdata = exe_mem_size==2'b01 ? {4{exe_rkd_value[7:0]}} : 
                         exe_mem_size==2'b10 ? {2{exe_rkd_value[15:0]}} :
                                                  exe_rkd_value;
//mem_size={h, b}

//alu
assign exe_alu_src1 = exe_src1_is_pc ? exe_pc : exe_rj_value;
                                      
assign exe_alu_src2 = (exe_src2_is_imm) ? exe_imm : 
                     (exe_src2_is_4)   ? 32'd4  : exe_rkd_value;

assign exe_div_enable = (exe_mul_div_op[2] | exe_mul_div_op[3]) & exe_valid;
assign exe_mul_enable = (exe_mul_div_op[0] | exe_mul_div_op[1]) & exe_valid;

//高有效（要暂停）
assign div_stall     = exe_div_enable & ~div_complete;
// assign div_stall     = exe_div_enable ? ~div_complete : 1'b0;

alu u_alu(
    .alu_op     (exe_alu_op    ),
    .alu_src1   (exe_alu_src1  ),
    .alu_src2   (exe_alu_src2  ),
    .alu_result (exe_alu_result)
    );

  //mul
  wire [63:0] exe_mul_result;
  wire [63:0] mul_result_signed, mul_result_unsigned;

  assign mul_result_unsigned = exe_rj_value * exe_rkd_value;
  assign mul_result_signed = $signed(exe_rj_value) * $signed(exe_rkd_value);
  assign exe_mul_result = exe_mul_div_sign ? mul_result_signed : mul_result_unsigned;
  // mul u_mul (
  //     .mul_clk   (clk),
  //     .reset     (~resetn),
  //     .mul_signed(exe_mul_div_sign),
  //     .x         (exe_alu_src1),
  //     .y         (exe_alu_src2),
  //     .result    (exe_mul_result)
  // );

  //div
  wire [`RegBus] s;
  wire [`RegBus] r;

//   wire        s_axis_divisor_tvalid_signed  ;
//   wire        s_axis_divisor_tready_signed  ;
//   wire        s_axis_divisor_tdata_signed   ;
//   wire        s_axis_dividend_tvalid_signed ;
//   wire        s_axis_dividend_tready_signed ;
//   wire        s_axis_dividend_tdata_signed  ;
//   wire        m_axis_dout_tvalid_signed     ;
//   wire [63:0] div_result_signed;

//   wire        s_axis_divisor_tvalid_unsigned  ;
//   wire        s_axis_divisor_tready_unsigned  ;
//   wire        s_axis_divisor_tdata_unsigned   ; 
//   wire        s_axis_dividend_tvalid_unsigned ;
//   wire        s_axis_dividend_tready_unsigned ;
//   wire        s_axis_dividend_tdata_unsigned  ;
//   wire        m_axis_dout_tvalid_unsigned     ;
//   wire [63:0] div_result_unsigned;


//   reg         r_axis_divisor_tvalid_signed;
//   reg         r_axis_dividend_tvalid_signed;

//   reg         r_axis_divisor_tvalid_unsigned;
//   reg         r_axis_dividend_tvalid_unsigned;

// always @(posedge clk) begin
//     if (~resetn) begin
//       r_axis_divisor_tvalid_signed <= 1'b0;
//       r_axis_dividend_tvalid_signed <= 1'b0;
//     end else if (exe_div_enable && exe_mul_div_sign) begin
//       r_axis_divisor_tvalid_signed <= 1'b1;
//       r_axis_dividend_tvalid_signed <= 1'b1;
//     end

// end

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

  // assign s_axis_divisor_tvalid_signed = r_axis_divisor_tvalid_signed;
  // assign s_axis_dividend_tvalid_signed = r_axis_dividend_tvalid_signed;
  // assign s_axis_divisor_tdata_signed  = exe_alu_src1;
  // assign s_axis_dividend_tdata_signed = exe_alu_src2;
  




  
// div_gen_signed div_gen_signed_0 (
//   .aclk                   (clk),                    
//   //除数
//   .s_axis_divisor_tvalid  (s_axis_divisor_tvalid_signed),  //in 
//   .s_axis_divisor_tready  (s_axis_divisor_tready_signed),  //out
//   .s_axis_divisor_tdata   (s_axis_divisor_tdata_signed ),  //in
//   //被除数
//   .s_axis_dividend_tvalid (s_axis_dividend_tvalid_signed), 
//   .s_axis_dividend_tready (s_axis_dividend_tready_signed), 
//   .s_axis_dividend_tdata  (s_axis_dividend_tdata_signed),  
//   //结果
//   .m_axis_dout_tvalid     (m_axis_dout_tvalid_signed),    //out 
//   .m_axis_dout_tdata      (div_result_signed)             //out
// );

// div_gen_unsigned div_gen_unsigned_0 (
//   .aclk                   (clk),                    
//   .s_axis_divisor_tvalid  (s_axis_divisor_tvalid_unsigned),  
//   .s_axis_divisor_tready  (s_axis_divisor_tready_unsigned),  
//   .s_axis_divisor_tdata   (s_axis_divisor_tdata_unsigned),   
//   .s_axis_dividend_tvalid (s_axis_dividend_tvalid_unsigned), 
//   .s_axis_dividend_tready (s_axis_dividend_tready_unsigned), 
//   .s_axis_dividend_tdata  (s_axis_dividend_tdata_unsigned),  
//   .m_axis_dout_tvalid     (m_axis_dout_tvalid_unsigned),     
//   .m_axis_dout_tdata      (div_result_unsigned)     
// );
// assign exe_result     = exe_res_from_csr ? exe_csr_data : exe_alu_result;

assign exe_result = exe_res_from_csr  ? exe_csr_data :
                    exe_mul_div_op[0] ? exe_mul_result[31:0] : 
                    exe_mul_div_op[1] ? exe_mul_result[63:32]:
                    exe_mul_div_op[2] ? s:
                    exe_mul_div_op[3] ? r:
                    exe_alu_result ;
//！这里把alu的结果放在最后面了或许会慢，但目前没有直接判断是alu操作的方法！



//前递和阻塞
assign dest_zero            = (exe_dest == 5'b0); 
assign forward_enable       = exe_gr_we & ~dest_zero & exe_valid;
// assign dep_need_stall       = exe_load_op | exe_div_enable | exe_mul_enable;
assign dep_need_stall       = exe_load_op || div_stall ; //如果是load，需要等load在exe的操作，接着等load在mem的操作

//exception
assign excp_ale        = access_mem & ((exe_mem_size[0] &  1'b0)                                  | 
                                       (exe_mem_size[1] &  exe_alu_result[0])                      | 
                                       (!exe_mem_size   & (exe_alu_result[0] | exe_alu_result[1]))) ;
                                
assign excp            = exe_excp || excp_ale;
assign excp_num        = {excp_ale, exe_excp_num};

assign error_va = exe_alu_result; //把alu结果（地址）存一下，如果出错了它就是出错的地址

//csr mask
assign csr_mask_result = (exe_rj_value & exe_rkd_value) | (~exe_rj_value & exe_csr_data);
assign exe_csr_result   = exe_csr_mask ? csr_mask_result : exe_rkd_value;

//addr trans(cache)
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

    //存储访问控制逻辑
    wire [1:0] dmw0_mat,dmw1_mat,page_mat;
    assign dmw0_mat = csr_dmw0[5:4];
    assign dmw1_mat = csr_dmw1[5:4];
    // wire dmw0_uncache,dmw1_uncache,page_uncache;
    // assign dmw0_uncache = dmw0_mat == 2'b00;
    // assign dmw1_uncache = dmw1_mat == 2'b00;
    // assign page_uncache = 1'b0;//暂时不考虑页表缓存

wire uncache_v ;
assign uncache_v = csr_da ? crmd_datm == 2'b00 :
                    csr_pg && dmw0_hit ? dmw0_mat == 2'b00 :
                    csr_pg && dmw1_hit ? dmw1_mat == 2'b00 :
                //    tlb_s0_found ? tlb_s0_mat == 2'b00 :
                    1'b0;

assign cache_v = ~uncache_v;


//id-exe
assign {/*exe_csr_rstat_en  ,  //349:349  for difftest
        exe_inst_st_en    ,  //348:341  for difftest
        exe_inst_ld_en    ,  //340:333  for difftst
        exe_cnt_inst      ,  //332:332  for difftest
        exe_timer_64      ,  //331:268  for difftest
        exe_inst          ,  //236:267  for difftest
        exe_idle          ,  //235:235
        exe_br_pre_error  ,  //234:234
        exe_br_pre        ,  //233:233
        exe_icache_miss   ,  //232:232*/
        // exe_br_inst       ,  //231:231
        // exe_preld         ,  //230:230
        // exe_cacop         ,  //229:229
        exe_mem_sign_exted,  //228:228
        // exe_invtlb        ,  //227:227
        // exe_tlbrd         ,  //226:226
        // exe_refetch       ,  //225:225
        // exe_tlbfill       ,  //224:224
        // exe_tlbwr         ,  //223:223
        // exe_tlbsrch       ,  //222:222
        // exe_sc_w          ,  //221:221
        // exe_ll_w          ,  //220:220
        exe_excp_num      ,  //219:211
        exe_csr_mask      ,  //210:210
        exe_csr_we        ,  //209:209
        exe_csr_idx       ,  //208:195
        exe_res_from_csr  ,  //194:194
        exe_csr_data      ,  //193:162
        exe_ertn          ,  //161:161
        exe_excp          ,  //160:160
        exe_mem_size      ,  //159:158
        exe_mul_div_op    ,  //157:154
        exe_mul_div_sign  ,  //153:153
        exe_alu_op        ,  //152:139
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
    // exe_csr_data      ,  //424:393  for difftest
//                        exe_csr_rstat_en  ,  //392:392  for difftest
                    //    data_wdata       ,  //391:360  for difftest
                    //    exe_inst_st_en    ,  //359:352  for difftest
                    //    data_addr        ,  //351:320  for difftest
                    //    exe_inst_ld_en    ,  //319:312  for difftest
                    //    exe_cnt_inst      ,  //311:311  for difftest
                    //    exe_timer_64      ,  //310:247  for difftest
                    //    exe_inst          ,  //246:215  for difftest
                       error_va         ,  //214:183
                    //    exe_idle          ,  //182:182
                    //    exe_cacop         ,  //181:181
                    //    preld_inst       ,  //180:180

                    //    exe_br_pre_error  ,  //179:179
                    //    exe_br_pre        ,  //178:178
                    //    exe_icache_miss   ,  //177:177
                    //    exe_br_inst       ,  //176:176
                    //    icacop_op_en     ,  //175:175
                       exe_mem_sign_exted,  //174:174  //only add this, not used. 
                    //    exe_invtlb_vpn    ,  //173:155
                    //    exe_invtlb_asid   ,  //154:145
                    //    exe_invtlb        ,  //144:144
                    //    exe_tlbrd         ,  //143:143
                    //    exe_refetch       ,  //142:142
                    //    exe_tlbfill       ,  //141:141
                    //    exe_tlbwr         ,  //140:140
                    //    exe_tlbsrch       ,  //139:139
                       exe_store_op      ,  //138:138
                    //    exe_sc_w          ,  //137:137
                    //    exe_ll_w          ,  //136:136
                       excp_num         ,  //135:126
                       exe_csr_we        ,  //125:125
                       exe_csr_idx       ,  //124:111
                       exe_csr_result    ,  //110:79
                       exe_ertn          ,  //78:78
                       excp             ,  //77:77
                       exe_mem_size      ,  //76:75
                       exe_mul_div_op    ,  //74:71
                       exe_load_op       ,  //70:70
                       exe_gr_we         ,  //69:69
                       exe_dest          ,  //68:64
                       exe_result       ,  //63:32
                       exe_pc               //31:0
                      };

endmodule