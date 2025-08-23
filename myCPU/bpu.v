module bpu
#(
   parameter PCW = 32, // 修改为32位PC宽度以匹配CPU
   parameter BTBW = 10, // BTB地址宽度保持不变
   parameter BTB_SIZE = 1024 // BTB大小
)
(/*AUTOARG*/
   input             clk,
   input             rst_n,
   input [PCW-1:0]   pc_i,           // PC of current branch instruction
   input             set_i,           // 更新BTB的使能信号
   input [PCW-1:0]   set_pc_i,       // 要更新的分支指令PC
   input             set_taken_i,     // 实际的分支结果
   input [PCW-1:0]   set_target_i,   // 实际的分支目标地址
   output wire        pre_taken_o,     // 预测的分支结果
   output wire [PCW-1:0] pre_target_o // 预测的分支目标地址
);
   
   // Local Parameters - 2位饱和计数器状态
   localparam SCS_STRONGLY_TAKEN = 2'b11;
   localparam SCS_WEAKLY_TAKEN = 2'b10;
   localparam SCS_WEAKLY_NOT_TAKEN = 2'b01;
   localparam SCS_STRONGLY_NOT_TAKEN = 2'b00;
   
   // 内部信号
   wire bypass; // bypass信号，用于处理同周期内的预测和更新
   wire [BTBW-1:0] tb_entry; // 当前PC对应的BTB条目
   wire [BTBW-1:0] set_tb_entry; // 要更新的BTB条目
   
   // PC地址哈希映射 - 使用PC的低位作为BTB索引
   assign tb_entry = pc_i[BTBW+1-2:2-2]; // 由于指令是4字节对齐，使用PC[11:2]
   // 使用XOR哈希函数
   //assign tb_entry = pc_i[BTBW+1:2] ^ pc_i[2*BTBW+1:BTBW+2];
   assign set_tb_entry = set_pc_i[BTBW+1-2:2-2];
   assign bypass = set_i && set_pc_i == pc_i; // 同周期内的bypass
   
   // 饱和计数器数组 - 用于分支预测
   reg [1:0] counter [(1<<BTBW)-1:0];
   
   // 饱和计数器更新逻辑
   integer entry;
   always @(posedge clk or negedge rst_n) begin
      if(!rst_n) begin
         // 复位所有计数器为弱不跳转状态
         for(entry=0; entry < (1<<BTBW); entry=entry+1)
            counter[entry] <= SCS_WEAKLY_NOT_TAKEN;
      end
      else if(set_i) begin
         // 根据实际分支结果更新计数器
         if(set_taken_i && counter[set_tb_entry] != SCS_STRONGLY_TAKEN) begin//如果实际分支结果为跳转，且计数器未达到最大值
            counter[set_tb_entry] <= counter[set_tb_entry] + 2'b01;
         end
         else if(!set_taken_i && counter[set_tb_entry] != SCS_STRONGLY_NOT_TAKEN) begin//如果实际分支结果为不跳转，且计数器未达到最小值
            counter[set_tb_entry] <= counter[set_tb_entry] - 2'b01;
         end
      end
   end
   
   // always @(posedge clk)begin
   //    if(!rst_n) begin
   //       pre_taken_o <= 1'b0;
   //    end else
   //       pre_taken_o <= bypass ? set_taken_i : counter[tb_entry][1];
   // end

   assign pre_taken_o = bypass ? set_taken_i : counter[tb_entry][1];

   // BTB向量 - 存储分支目标地址
   reg [PCW-1:0] btb [(1<<BTBW)-1:0];
   
   // BTB复位逻辑
   integer btb_entry;
   always @(posedge clk or negedge rst_n) begin
      if(!rst_n) begin
         // 复位所有BTB条目
         for(btb_entry=0; btb_entry < (1<<BTBW); btb_entry=btb_entry+1) begin
            btb[btb_entry] <= {PCW{1'b0}};
         end
      end
   end
   
   // 分支目标地址预测输出
   // always @(posedge clk) begin
   //    if(!rst_n) begin
   //       pre_target_o <= 32'b0;
   //    end else begin
   //       pre_target_o <= bypass ? set_target_i : btb[tb_entry];
   //    end
   // end
   assign pre_target_o = bypass ? set_target_i : btb[tb_entry];

   // BTB更新逻辑
   always @(posedge clk) begin
      if(set_i && set_taken_i) begin
         btb[set_tb_entry] <= set_target_i;
      end
   end

endmodule