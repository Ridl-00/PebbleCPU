`include "defines.v"
module mmu (
    input wire[31:0] addr_i,
    input wire[1:0] da_pg,
    input wire[31:0] dmw0,
    input wire[31:0] dmw1,
    output wire [31:0] addr_o,
    output wire cache_v
);
    //地址翻译逻辑
    wire [2:0] addr_head_i,addr_head_o;
    assign addr_head_i = addr_i[31:29];

    wire [2:0] dmw0_vseg,dmw0_pseg,dmw1_vseg,dmw1_pseg;
    assign dmw0_vseg = dmw0[31:29];
    assign dmw0_pseg = dmw0[27:25];
    assign dmw1_vseg = dmw1[31:29];
    assign dmw1_pseg = dmw1[27:25];

    wire dmw0_hit,dmw1_hit;
    assign dmw0_hit = addr_head_i == dmw0_vseg;
    assign dmw1_hit = addr_head_i == dmw1_vseg;

    assign addr_head_o = //dmw0_hit? dmw0_pseg : (dmw1_hit? dmw1_pseg : addr_head_i);
                        3'b0;
    assign addr_o = /*da_pg==2'b10 ? addr_i                     :
                    da_pg==2'b01 ?*/ {addr_head_o, addr_i[28:0]}/*:32'b0*/;

    //存储访问控制逻辑
    wire [1:0] dmw0_mat,dmw1_mat,page_mat;
    assign dmw0_mat = dmw0[5:4];
    assign dmw1_mat = dmw1[5:4];
    wire dmw0_uncache,dmw1_uncache,page_uncache;
    assign dmw0_uncache = dmw0_mat == 2'b00;
    assign dmw1_uncache = dmw1_mat == 2'b00;
    assign page_uncache = 1'b0;//暂时不考虑页表缓存

    assign cache_v = ~(dmw0_hit&dmw0_uncache | dmw1_hit&dmw1_uncache | page_uncache );
                
endmodule