# PebbleCPU

### 版本信息

2025.8.24 推送龙芯杯决赛提交版本。

* 六级流水线，添加ICACHE，DCACHE，哈佛结构
* 握手信号分布式控制
* 实现大部分CSR接口，实现精确异常
* 最高主频56MHz

### 运行方式/参数设置

* myCPU代码基于chiplab运行

#### Difftest使用

切换至difftest_ver分支后才可使用。

此时：

- cache data中的 data_bram_bank_reg 由RTL代码模块实现而非IP核
- mycpu_top中例化difftest相关接口模块

### To Do List

* 关键路径exe->icache待优化
* BPU功能完善

### branches与开发者介绍

- main：稳定版本发布分支
- Ridl：Ridl_00's 开发分支。完成精确异常的流水级控制信号。五级流水->六级流水切分。日常DEBUG。
- Haoyue：ShiningMoon-h's 开发分支。完成ICACHE模块、DCACHE模块的接入。日常删除冗余的注释。
- lin：chenlinlinl's 开发分支。完成设计报告的撰写。尝试接入CACHE、接入BPU等。
- difftest_ver：能够使用Difftest测试框架的版本
- bpu：接入了分支预测单元（BPU）的版本。目前为负优化。

### 参考项目

本项目参考了包括但不限于下列书籍、资料、网站或开源项目：

- 汪文祥, 邢金璋. CPU 设计实战 [M]. 机械工业出版社: 202101.
- 李亚民. 计算机原理与设计 [M]. 清华大学出版社: 201101.
- la500 项目：https://gitee.com/loongson-edu/open-la500
- mariver 项目：https://github.com/HIT-MaRiver-mips/cpucore-mariver
- ysxAshore 项目：https://github.com/ysxAshore/LoongArch-Learn
- Cache 项目：https://github.com/fluctlight001/Generic-Cache-Module
- BPU 项目：https://github.com/Martins3/MIPS-5
- 乘法器项目：https://gitee.com/orangebird/serval_cat
