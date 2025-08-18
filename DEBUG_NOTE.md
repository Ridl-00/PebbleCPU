## 信号

### excp信号

当指令出现例外（异常）时，

- stage_valid && !excp：当前指令无例外，此时为正常流水逻辑
- stage_valid && excp：当前指令有例外，此时忽略流水级正常逻辑。具体为：readygo直接为1；不允许与其他模块交互（包括 id级不可发起发起分支跳转信号，exe级不得发起读写请求）



### flush信号

flush_sign置起时，表示当级流水线需要被冲刷。flush信号分为以下三种：

- excp_flush：异常导致的flush，新的pc为CSR.EENTRY的值。由exe级发出（因为exe级以后不再会增加新的异常），影响exe以前的流水级。用于处理异常。
- ertn_flush：ertn指令触发，新的pc为CSR.ERA的值。由wb级发出，影响整条流水线。用于从例外处理返回。
- refetch_flush：写CSR指令触发，新的pc为触发指令+4。由wb级发出，影响整条流水线。用于解决CSR寄存器的数据冒险。

flush信号对于每级流水的影响：

对除了preif（伪）级和if级以外：在下一拍将stage_valid信号拉低。

对所有级：当拍拉低stage_to_next_stage_valid信号。因为在preif和if级，flush信号会由于preif级尚未充公取指而保持为高，此时if级仍有可能向id级传递数据，需要标记为无效。为了编码的规范，我们为每一级stage_to_next_stage_valid都添加了此逻辑

preif（伪）级：根据flush信号重新选取nextpc的值，在当前preif级指令尚未成功发起取指请求或if级尚不能接收下一指令的情况下保持flush信号置起，直到flush后的nextpc成功发起取指请求。

if：在当前if级指令正在等待icache返回数据的情况下置起if_inst_cancel信号，标记当前有一个回收到但没用的dataok信号。

id级：不允许发分支跳转信号

exe级：不允许发读写dcache请求

### br_really_taken

类似于只刷新preif和if的flush信号



### trys

#### 把excp_flush信号提前到exe阶段发->failed

这样是错误的，因为excp伴随着写csr，如果只是把excp提前，而不把原本在wb的写csr逻辑提前的话，excp和这条excp对应的pc、code等信息就不是对应的了。

而考虑不想增加exe阶段的负担，于是没有把发excp和写csr放到exe

## 结构

### preif阶段

发起取指

- 类sram握手信号类同exe
- inst_sram_req



## vivado玄学

原本跑的好好的仿真在某一次 闪退之后就不能跑了，居然让修复完全没有用上的mul模块

->有可能 是无用的block design的残留文件导致的。因为在remove from project一些bd的遗留文件（没有删mul）之后就又能跑了



## .bit编码

### systemrun

81701_system：system_run工程，33Mhz时钟，cpu版本：br全部不前递。wns -0.98。

