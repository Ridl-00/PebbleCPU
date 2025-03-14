`timescale 1ns / 1ps

// global
`define RstEnable           1'b0
`define RstDisable          1'b1
`define ZeroWord            32'h00000000 //32位的数值0
`define WriteEnable         1'b1
`define WriteEnable_n       1'b0 //写使能（低有效）
`define WriteDisable        1'b0
`define WriteDisable_n      1'b1 //写除能（低有效）
`define ReadEnable          1'b1
`define ReadDisable         1'b0
`define AluOpBus            11:0 //译码阶段的输出aluop_o的宽度
//流水级间交互
`define StageValid 1'b1 //由触发器维护，表示当前流水级是否在处理指令
`define StageInvalid 1'b0
`define StageReadygo 1'b1 //表示流水级是否需要被阻塞
`define StageNoteadygo 1'b0
`define StageAllowin 1'b1 //当前流水级是否允许上一级流水进入
`define StageNotallowin 1'b0
`define StageToNextstageValid 1'b1 //当前流水级中是否有处理完毕的指令
`define StageToNextstageInvalid 1'b0

    //各级间总线宽
`define IF_TO_ID_WD 64-1:0

`define ID_TO_IF_WD 34-1:0
`define ID_TO_EXE_WD 157-1:0
`define EXE_TO_MEM_WD 74-1:0
`define MEM_TO_WB_WD 70-1:0
`define WB_TO_ID_WD 39-1:0
`define EXE_TO_ID_WD 40-1:0
`define MEM_TO_ID_WD 39-1:0

ID_DATA_Reset 64'b0

//pc
`define PcReset 32'h1bff_fffc
//指令存储器inst_rom
`define InstAddrBus 31:0 //ROM的地址总线宽度
`define InstBus 31:0 //数据总线宽度
`define InstMemNum 131071 //ROM的实际大小为128KB
`define InstMemNumLog2 17 //ROM实际使用的地址宽度
`define InstWriteEnable_WD 3:0


//通用寄存器regfile
`define RegAddrBus 4:0
`define RegBus 31:0
`define RegWidth 32 //通用寄存器的宽度
`define DoubleRegWidth 64 //两倍的通用寄存器的宽度
`define DoubleRegBus 63:0
`define RegNum 32 //通用寄存器的数量
`define RegNumLog2 5 //寻址通用寄存器使用的地址位数
`define NOPRegAddr 5'b00000 //用于无操作指令的寄存器地址
