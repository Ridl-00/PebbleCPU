`timescale 1ns / 1ps

// 简化的icache调试模块 - 直接透传，不缓存
module debug_icache (
    input  wire         clk,
    input  wire         resetn,
    
    // CPU侧接口 (来自IF阶段)
    input  wire         cpu_req,           // CPU请求有效
    input  wire         cpu_wr,            // 写请求(指令缓存只读，恒为0)
    input  wire [3:0]   cpu_wstrb,         // 写字节使能(指令缓存不用)
    input  wire [1:0]   cpu_size,          // 访问大小
    input  wire [31:0]  cpu_addr,          // CPU请求地址
    input  wire [31:0]  cpu_wdata,         // 写数据(指令缓存不用)
    output reg          cpu_addr_ok,       // 地址握手成功
    output reg          cpu_data_ok,       // 数据返回有效
    output reg  [31:0]  cpu_rdata,         // 返回给CPU的数据
    
    // AXI侧接口 (连接到axi_bridge)
    output reg          axi_req,           // 向AXI发起请求
    output wire         axi_wr,            // AXI写请求(恒为0)
    output wire [3:0]   axi_wstrb,         // AXI写字节使能
    output wire [1:0]   axi_size,          // AXI访问大小
    output reg  [31:0]  axi_addr,          // AXI请求地址
    output wire [31:0]  axi_wdata,         // AXI写数据
    input  wire         axi_addr_ok,       // AXI地址握手成功
    input  wire         axi_data_ok,       // AXI数据返回有效
    input  wire [31:0]  axi_rdata          // 从AXI返回的数据
);

// AXI接口固定信号(指令缓存只读)
assign axi_wr = 1'b0;
assign axi_wstrb = 4'b0000;
assign axi_size = 2'b10;  // 4字节访问
assign axi_wdata = 32'b0;

// 保存当前请求地址用于调试
reg [31:0] current_addr;

// 简单的直通逻辑 - 不缓存，直接转发到AXI
always @(posedge clk) begin
    if (!resetn) begin
        cpu_addr_ok <= 1'b0;
        cpu_data_ok <= 1'b0;
        cpu_rdata <= 32'b0;
        axi_req <= 1'b0;
        axi_addr <= 32'b0;
        current_addr <= 32'b0;
    end else begin
        // CPU请求直接转发到AXI
        if (cpu_req && !axi_req) begin
            cpu_addr_ok <= 1'b1;
            axi_req <= 1'b1;
            axi_addr <= cpu_addr;
            current_addr <= cpu_addr;  // 保存当前请求地址
        end else begin
            cpu_addr_ok <= 1'b0;
        end
        
        // AXI地址握手后停止请求
        if (axi_addr_ok) begin
            axi_req <= 1'b0;
        end
        
        // AXI数据返回直接转发给CPU
        if (axi_data_ok) begin
            cpu_data_ok <= 1'b1;
            cpu_rdata <= axi_rdata;
            
            // 调试信息输出 - 使用保存的地址
            $display("DEBUG_ICACHE [%t]: addr=0x%08x, data=0x%08x", $time, current_addr, axi_rdata);
        end else begin
            cpu_data_ok <= 1'b0;
        end
    end
end

endmodule 