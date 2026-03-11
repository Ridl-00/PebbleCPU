添加bram：
name：data_bram_bank

字节选8

width：32

depth：64

初始化=0



## Difftest 使用

在/myCPU/defines.v文件下，将``define DIFFTEST_EN`取消注释即可将代码切换至DIFFTEST模式

此时：

- cache data中的 data_bram_bank_reg 由代码模块实现而非IP核

- mycpu_top中例化difftest相关模块

注意：

- Difftest模式仅供测试。因为该模式端口中有reg数组，无法在vivado中正常编译。如果需进行后续步骤需关闭Difftest模式
