# PebbleCPU

### 版本信息

2025.8.6 推送龙芯杯初赛提交版本，能够通过所有2025年龙芯杯比赛功能测试、性能测试程序

- 五级流水线，添加ICACHE，DCACHE，哈佛结构
- 握手信号分布式控制
- 实现大部分CSR接口，实现精确异常

- 最高主频45MHz

### 运行方式/参数设置

- myCPU代码基于chiplab运行
- 添加bram ip核
  -  name：data\_bram\_bank
  - 字节选8，位宽32，深度64，初始化=0

### To Do List

- 关键路径exe->icache待优化
