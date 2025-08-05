`include "defines.v"

module uncache(
    input wire clk,
    input wire rst,
    
    output wire addr_ok,
    output wire data_ok,

    input wire conf_en,
    input wire [3:0] conf_wen,
    input wire [31:0] conf_addr,
    input wire [31:0] conf_wdata,
    output reg [31:0] conf_rdata,

    output reg axi_en, // en
    output reg [3:0] axi_wsel, // wen
    output reg [31:0] axi_addr, // addr
    output reg [31:0] axi_wdata,

    input wire refresh,
    input wire [31:0] axi_rdata
);
    reg finish;
    reg axi_busy;
    //用axi_buzy信号判断uncache是否已经发出请求，此时等待refresh信号

    assign addr_ok=refresh & conf_en;
    assign data_ok=finish;
    always @ (posedge clk) begin
        if (rst) begin
            finish <= 1'b0;
            conf_rdata <= 32'b0;
        end
        else if (refresh) begin
            finish <= 1'b1;
            conf_rdata <= axi_rdata; //data有hold功能
        end
        else begin
            finish <= 1'b0;
        end
    end

    always @ (posedge clk) begin
        if (rst) begin
            axi_en <= 1'b0;
            axi_wsel <= 4'b0;
            axi_addr <= 32'b0;
            axi_wdata <= 32'b0;
        end
        else begin
            if (addr_ok | data_ok ) begin
                axi_en <= 1'b0;
                axi_wsel <= 4'b0;
                axi_addr <= 32'b0;
                axi_wdata <= 32'b0;

            end
            else if (conf_en) begin
                axi_en <= 1'b1;
                axi_wsel <= conf_wen;
                axi_addr <= conf_addr;
                axi_wdata <= conf_wdata;            
            end
        end
    end
endmodule

