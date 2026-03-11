# PebbleCPU

### 版本信息

2025.8.24 推送龙芯杯决赛_Difftest提交版本。

Difftest版本仅供测试。因为该模式端口中有reg数组，无法在vivado中正常编译。如果需进行后续步骤，需将修改后代码合并至另外版本。

* 六级流水线，添加ICACHE，DCACHE，哈佛结构
* 握手信号分布式控制
* 实现大部分CSR接口，实现精确异常
* 最高主频56MHz

### 运行方式/参数设置

* myCPU代码基于chiplab运行

#### Difftest使用

在/myCPU/defines.v文件下，将``define DIFFTEST_EN`取消注释即可将代码切换至DIFFTEST模式

此时：

- cache data中的 data_bram_bank_reg 由RTL代码模块实现而非IP核
- mycpu_top中例化difftest相关接口模块

### To Do List

* 关键路径exe->icache待优化
