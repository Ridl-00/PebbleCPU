module data_bram_bank_reg (
    input wire clka,
    input wire ena,
    input wire [3:0] wea,
    input wire [5:0] addra,
    input wire [31:0] dina,
    output reg [31:0] douta
);

reg [31:0] ram [0:63];

integer i;
initial begin
    for (i = 0; i < 64; i = i + 1) begin
        ram[i] = 32'h00000000;
    end
end

// RAM读写逻辑
always @(posedge clka) begin
    if (ena) begin
        // 写操作 - 按字节使能写入
        if (wea[0]) ram[addra][7:0]   <= dina[7:0];
        if (wea[1]) ram[addra][15:8]  <= dina[15:8];
        if (wea[2]) ram[addra][23:16] <= dina[23:16];
        if (wea[3]) ram[addra][31:24] <= dina[31:24];
        
        // 读操作
        douta <= ram[addra];
    end
end

endmodule