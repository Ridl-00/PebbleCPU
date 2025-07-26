## 信号

### 有关excp和ready go

（7.26：

（？）姑且认为：

在发生了异常之后，当前指令在当前级，如果是**不需要等待 返回的握手信号的流水级**，就可以直接ready go；

而需要等待握手信号的，继续以 unreadygo形态等待握手信号，

​	即**不能**由excp置高readygo

！在preif和if中，preif的adef会导致不发req，所以if在adef的时候不需要等握手ok信号返回，即，preif excp让req不发 ，同时让if readygo不需要等data ok



### 有关excp和valid

（7.26：

带有excp信号的指令也应该作为有效（有功能）的指令传递下去，因为要在wb时将pc写入csr，​

​	即不可以因为excp而拉低stage to nextstage valid



### 有关excp

有异常时需要立即处理异常（忽略所有原有流水逻辑）

（7.26

excp只能标记这条指令有异常，而不能直接取消这条指令。

​	即，在指令在各级操作时，valid为1，但不能进行操作

​		即，valid为1的同时，在各种操作时 需要判断 ！excp



### 有关flush

（7.26：

由wb发送至各级的三种flush信号，会导致：

​	if：对if valid无影响，会导致if级pc等信号更新。因为if作为第一级流水 直接根据新的pc值取指

​	id、exe、mem：拉低stage valid

​	wb：无影响

（？）目前stage to nextstage valid需要 &！flush sign。但实际上，flush已经把下一stage的下一拍 的stage valid拉低了，是否还有需要拉低stage to nextstage valid？

​	-->还是需要拉低，因为不一定在当前级的指令指令在下一拍会进入下一级（匹配上下一级的valid信号

​	那么相对应的，是不是只要一定能在下一拍进入下一级，即**不需要等待ok信号的级**，可以不把stage to nextstage valid通过flush拉低

![image-20250726015239872](C:\Users\21905\AppData\Roaming\Typora\typora-user-images\image-20250726015239872.png)

​	（？）当前级的指令都没有运行的（valid低了），是否会被传入下一流水级？是否有传递stage to nextstage valid的必要？

​	考虑mem-wb：wb valid并没有被拉低，那么下一拍从mem进入wb的指令（在flush的前提下是无效的），应当伴随着 valid信号为低被

​	考虑iif、d、exe、mem级：在flush的下一拍，id exe mem的valid都是低的，同时导致allowin都是高的，再下一拍被allowin允许传递stage to nextstage valid信号，而此时flush已经过去了。

​		即，flush导致的stage to nextstage valid信号并没有起作用（需要allowin作为条件，而allowin条件的优先级没有flush高）。即，nextstage valid是被flush直接置低的，而非被flush置低的stage to nextstage valid置低

（？）那干脆把wb valid也一起通过flush拉低了（自己flush自己？！），这样就不需要因为flush而把mem to wb valid拉低了。好像可以自己flush自己，因为flush在flush信号发出的后一拍才将所有的valid置低



（）还是把stage to nextstage valid全都拉低吧，标记当前级指令失效（flush后指令理应失效

​	万一CPU周期之间的周期数没有



### 有关valid

（7.26：

本质为当前级是否正在处理指令（不论该指令是否有效

#### 面对flush

flush后，该指令确实不需要了，即整条流水线重新取值。故flush可以将valid拉低



### （！）有关stage_to_nextstage_valid

（7.26

本质为标志当前在这级的指令在进入下一级时还是不是一条有效的指令

即，可以用于标记当前指令是否有效

​	需要在被取消时拉低（flush时，brtaken时

对流水级间进行数据传递的控制信号：使用stage_to_nextstage_valid

对流水级内部控制信号，用stage valid



### 有关load-branch下的ready go

id应当在检测到 exe和mem向id前递正在写的寄存器信息，但mem可能尚未等到data ok

​	即，id需要阻塞，直到mem等到data ok

​	但，当遇到load后紧跟branch，br在id时，load在exe。exe发完data req之后可以readygo，但需要等mem接到data ok，置起mem allowin才能让exe allowin，即exe需要一直向id发stall



id能够阻塞id，但不一定能够阻塞if（因为此时if级可能还没有指令（？书里说的）），所以需要从id直接传br_stall信号给preif，从而阻塞preif



### 有关req



## vivado玄学

原本跑的好好的仿真在某一次 闪退之后就不能跑了，居然让修复完全没有用上的mul模块

![image-20250726023031875](C:\Users\21905\AppData\Roaming\Typora\typora-user-images\image-20250726023031875.png)

->也有可能 是无用的block design的残留文件导致的。因为在remove from project一些bd的遗留文件（没有删mul）之后就又能跑了





