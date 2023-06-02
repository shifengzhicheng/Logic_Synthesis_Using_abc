# Logic Synthesis Project2023
## 原文件说明

### Project描述

本次Project主要内容是调用abc工具进行逻辑综合。

Abc工具是UC Berkeley研发的一款逻辑综合工具，在该工具中，可以调用命令对逻辑网络进行操作，从而优化电路的资源、时序。有关abc工具的信息，可以下列网站中得到：

[https://people.eecs.berkeley.edu/~alanmi/abc/ ](https://people.eecs.berkeley.edu/~alanmi/abc/)

[https://github.com/berkeley-abc/abc ](https://github.com/berkeley-abc/abc)

在本次Project所提供的资料中，包含了10个例子，在每个例子中，运行以下命令，就可以执行一次完整的逻辑综合流程：

  ../abc10216.exe

  source runcmd

其中runcmd中的命令便是abc工具自带的命令。

在所提供的10个例子中，运行以上流程均可以实现读入原始文件case\<i>.v，并输出综合后的文件case\<i>_out.v。本次Project要做的内容便是在每个例子的runcmd文件中插入额外的命令，使电路的资源和时序优于给定的要求。

 

 

### Project要求

在所给的10个例子的runcmd文件中插入额外的abc命令，使电路的资源和时序优于给定的要求。

runcmd文件的示例如下：

read_library cadence.genlib %读入器件的library

read_verilog case6.v %读入原始设计文件，用逻辑网络的形式表示

strash %具体的逻辑综合操作

map %将逻辑网络映射到library中的器件

print_stats %输出资源、时序等信息的统计

write_verilog case6_out.v %导出verilog文件

本次Project要修改的内容是在runcmd文件中的read_verilog和map命令之间，插入abc命令。

10个例子的资源与时序要求如下：

| Case | Area< | Delay< | 优化人 |
| ---- | ----- | ------ | ------ |
| 1    | 204   | 14     |        |
| 2    | 366   | 25     | 郑志宇 |
| 3    | 388   | 18     |        |
| 4    | 174   | 9      |        |
| 5    | 336   | 89     |        |
| 6    | 248   | 21     | 邱峻蓬 |
| 7    | 294   | 32     |        |
| 8    | 668   | 55     | 郑志宇 |
| 9    | 532   | 52     |        |
| 10   | 330   | 34     | 邱峻蓬 |

### abc命令简介

有关abc命令的详细说明，可以在网站[https://people.eecs.berkeley.edu/~alanmi/abc/](https://people.eecs.berkeley.edu/~alanmi/abc/)上看到。本次Project涉及的电路都是组合逻辑电路，因此主要用到Synthesis-Comb模块的命令。这里对这一模块的命令做一个简要的描述： 

1. balance – 假设输入是一个 AIG 并创建一个具有最小延迟的等效 AIG，使用双输入与门的逻辑电平进行测量。 反相器不计入逻辑电平的数量。 生成的 AIG 是通过原始 AIG 中包含的多输入与门的代数平衡得出的。balancing按拓扑顺序应用，并选择每个多输入与门的最小延迟树分解。balancing考虑了主要输入的到达时间，这可以用 BLIF 表示。
2. cleanup – 移除当前逻辑网络中的悬挂节点，即不扇出到 PO 和锁存器中的逻辑节点。 
3. collapse – 递归地将扇入节点组合成扇出节点，形成一个网络，其中每个CO由一个节点生成，其扇入是 CI。collapsing是通过使用BDD构建全局函数来执行的，因此仅限于相对较小的电路。collapsing后，节点功能使用BDD表示。 
4. dsd – 使用 Bertacco/Damiani (ICCAD'97) 的算法应用disjoint-support decomposition。
5. fx – 通过使用 Rajski/Vasudevamurthi (TCAD'92) 的算法提取two-cube divisors和two-literal single-cube divisors来检测逻辑共享。
6. multi – 将双输入门 AIG 扩展为多输入与门网络。
7. refactor – 对 AIG 中的逻辑锥体进行迭代折叠和重构，试图减少 AIG 节点的数量和逻辑层的数量。
8. renode – 假设输入是 AIG。 在此 AIG 中创建节点边界并折叠中间逻辑以形成更大的节点。
9. rewrite – 执行 AIG 的 DAG 感知重写，试图减少 AIG 节点的数量和逻辑级别的数量。
10. rr – 为 AIG 执行冗余删除。
11. strash – 通过一级结构哈希将当前网络转换为 AIG。 由此产生的 AIG 是一个逻辑网络，由双输入与门和反相器组成，表示为边上的互补属性。 结构哈希是一种纯粹的组合变换，它不会修改锁存器的数量和位置。
12. sweep – 适用于当前逻辑网络的经典扫描，产生逻辑网络。 Sweep 执行以下任务：移除悬挂节点（没有扇出的节点），将缓冲器和反相器折叠到它们的扇出中，传播常量，并移除重复的扇入。 Sweep 不能应用于 AIG，因为 AIG 在结构上是散列的，因此没有缓冲区、逆变器和未传播的常量节点。 要删除逻辑网络中的空闲节点，请使用cleanup。

### 提交要求

- 保持高层次综合Project的分组。
- 最终提交10个case的runcmd文件，以及每个case的area和delay统计结果(做成一张表格，参考上面第2部分的表格)，并注明每位同学贡献。

## 项目成员

| 成员名称 | 学号        |
| -------- | ----------- |
| 郑志宇   | 20307130176 |
| 邱峻蓬   | 20307130028 |
| 任钰浩   | 20307130243 |
| 沈笑涵   | 20307130063 |
| 周翔     | 20307130188 |

## 项目说明

本项目实现了10个需要逻辑综合的门级网表的逻辑综合并输出到指定的目录下。项目的代码如每个case内的runcmd所示。通过运行abc10216.exe然后在abc中运行case下的runcmd文件可以得到对应的约束信息。

## 每个case的运行结果

### case1

#### 运行结果

```bash
cmd运行结果

```

#### 运行截图

不另外加代码的综合结果：

<img src="picture\case10run_ori.png" alt="case10run_ori" width="600px;" />

优化了的综合结果：

<img src="picture\case10run.png" alt="case10run" width="600px;" />

#### 输出结果

```verilog
// Benchmark "case2" written by ABC on Thu Jun 01 20:41:21 2023

```

### case2

#### 运行要求

| Case | Area< | Delay< |
| ---- | ----- | ------ |
| 2    | 366   | 25     |

#### 运行结果

```bash
The number of gates read = 6.
Read 6 gates from file "cadence.genlib".
Selected 6 functionally unique gates. Time =    0.00 sec
Created 2 rules and 2 matches. Time =    0.00 sec
A simple supergate library is derived from gate library "cadence.genlib".
Loaded 2 unique 5-input supergates from "cadence.super".  Time =    0.00 sec
case2        : i/o =    5/    3  lat =    0  nd =    15  edge =     23  area =78.00  delay = 7.00  lev =  5
```

#### 运行截图

不另外加代码的综合结果：

<img src="picture\case2run_ori.png" alt="case2run_ori" width="600px;" />

优化了的综合结果：

<img src="picture\case2run.png" alt="case2run" width="600px;" />

#### 输出结果

```verilog
// Benchmark "case2" written by ABC on Thu Jun 01 20:41:21 2023

module case2 ( 
    a, b, c, d, e,
    x, y, z  );
  input  a, b, c, d, e;
  output x, y, z;
  wire n8, n9, n10, n11, n12, n13, n14, n16, n17, n18, n19, n20;
  INVX1  g00(.A(a), .Y(n8));
  INVX1  g01(.A(b), .Y(n9));
  OR2X1  g02(.A(n9), .B(n8), .Y(n10));
  OR2X1  g03(.A(d), .B(c), .Y(n11));
  INVX1  g04(.A(n11), .Y(n12));
  OR2X1  g05(.A(n12), .B(e), .Y(n13));
  OR2X1  g06(.A(n13), .B(n10), .Y(n14));
  INVX1  g07(.A(n14), .Y(x));
  INVX1  g08(.A(d), .Y(n16));
  INVX1  g09(.A(c), .Y(n17));
  INVX1  g10(.A(e), .Y(n18));
  OR2X1  g11(.A(n18), .B(n17), .Y(n19));
  OR2X1  g12(.A(n19), .B(n16), .Y(n20));
  OR2X1  g13(.A(n20), .B(n10), .Y(y));
  OR2X1  g14(.A(n20), .B(n10), .Y(z));
endmodule
```

### case3

#### 运行要求

| Case | Area< | Delay< |
| ---- | ----- | ------ |
| 3    | 388   | 18     |

#### 运行结果

```bash
cmd运行结果

```

#### 运行截图

不另外加代码的综合结果：

<img src="picture\case10run_ori.png" alt="case10run_ori" width="600px;" />

优化了的综合结果：

<img src="picture\case10run.png" alt="case10run" width="600px;" />

#### 输出结果

```verilog
// Benchmark "case2" written by ABC on Thu Jun 01 20:41:21 2023

```

### case4

#### 运行结果

```bash
cmd运行结果

```

#### 运行截图

不另外加代码的综合结果：

<img src="picture\case10run_ori.png" alt="case10run_ori" width="600px;" />

优化了的综合结果：

<img src="picture\case10run.png" alt="case10run" width="600px;" />

#### 输出结果

```verilog
// Benchmark "case2" written by ABC on Thu Jun 01 20:41:21 2023

```

### case5

#### 运行要求

| Case | Area< | Delay< |
| ---- | ----- | ------ |
| 5    | 336   | 89     |

#### 运行结果

```bash
cmd运行结果

```

#### 运行截图

不另外加代码的综合结果：

<img src="picture\case10run_ori.png" alt="case10run_ori" width="600px;" />

优化了的综合结果：

<img src="picture\case10run.png" alt="case10run" width="600px;" />

#### 输出结果

```verilog
// Benchmark "case2" written by ABC on Thu Jun 01 20:41:21 2023

```

### case6

#### 运行要求

| Case | Area< | Delay< |
| ---- | ----- | ------ |
| 6    | 248   | 21     |

#### 运行结果

```bash
The number of gates read = 6.
Read 6 gates from file "cadence.genlib".
Selected 6 functionally unique gates. Time =    0.00 sec
Created 2 rules and 2 matches. Time =    0.00 sec
Cleanup removed 0 dangling nodes.
A simple supergate library is derived from gate library "cadence.genlib".
Loaded 2 unique 5-input supergates from "cadence.super".  Time =    0.00 sec
case6        : i/o =    6/    3  lat =    0  nd =    16  edge =     26  area =92.00  delay =11.00  lev =  5

```

#### 运行截图

不另外加代码的综合结果：

<img src="picture\case6run_ori.png" alt="case6run_ori" width="600px;" />

优化了的综合结果：

<img src="picture\case6run.png" alt="case6run" width="600px;" />

#### 输出结果

```verilog
// Benchmark "case6" written by ABC on Fri Jun 02 03:01:34 2023

module case6 ( 
    a, b, c, d, e, f,
    y1, y2, y3  );
  input  a, b, c, d, e, f;
  output y1, y2, y3;
  wire n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21;
  OR2X1  g00(.A(f), .B(e), .Y(n9));
  INVX1  g01(.A(n9), .Y(n10));
  AND2X1 g02(.A(f), .B(e), .Y(n11));
  OR2X1  g03(.A(n11), .B(n10), .Y(n12));
  OR2X1  g04(.A(d), .B(c), .Y(n13));
  OR2X1  g05(.A(n13), .B(n12), .Y(n14));
  INVX1  g06(.A(e), .Y(n15));
  INVX1  g07(.A(f), .Y(n16));
  OR2X1  g08(.A(n16), .B(n15), .Y(n17));
  AND2X1 g09(.A(n17), .B(n9), .Y(n18));
  INVX1  g10(.A(a), .Y(n19));
  INVX1  g11(.A(b), .Y(n20));
  OR2X1  g12(.A(n20), .B(n19), .Y(n21));
  OR2X1  g13(.A(n21), .B(n18), .Y(y2));
  AND2X1 g14(.A(y2), .B(n14), .Y(y1));
  INVX1  g15(.A(n14), .Y(y3));
endmodule

```

### case7

#### 运行要求

| Case | Area< | Delay< |
| ---- | ----- | ------ |
| 7    | 294   | 32     |

#### 运行结果

```bash
cmd运行结果

```

#### 运行截图

不另外加代码的综合结果：

<img src="picture\case10run_ori.png" alt="case10run_ori" width="600px;" />

优化了的综合结果：

<img src="picture\case10run.png" alt="case10run" width="600px;" />

#### 输出结果

```verilog
// Benchmark "case2" written by ABC on Thu Jun 01 20:41:21 2023

```

### case8

#### 运行要求

| Case | Area< | Delay< |
| ---- | ----- | ------ |
| 8    | 668   | 55     |

#### 运行结果

```bash
The number of gates read = 6.
Read 6 gates from file "cadence.genlib".
Selected 6 functionally unique gates. Time =    0.00 sec
Created 2 rules and 2 matches. Time =    0.00 sec
A simple supergate library is derived from gate library "cadence.genlib".
Loaded 2 unique 5-input supergates from "cadence.super".  Time =    0.00 sec
case8        : i/o =   10/    5  lat =    0  nd =    23  edge =     40  area =148.00  delay =16.00  lev =  8
```

#### 运行截图

不另外加代码的综合结果：

<img src="picture\case8run_ori.png" alt="case2run_ori" width="600px;" />

优化了的综合结果：

<img src="picture\case8run.png" alt="case8run" width="600px;" />

#### 输出结果

```verilog
// Benchmark "case8" written by ABC on Thu Jun 01 20:53:12 2023

module case8 ( 
    a, b, c, d, e, f, g, h, i, j,
    y1, y2, y3, y4, y5  );
  input  a, b, c, d, e, f, g, h, i, j;
  output y1, y2, y3, y4, y5;
  wire n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
    n29, n31, n32, n33;
  OR2X1  g00(.A(b), .B(a), .Y(n15));
  AND2X1 g01(.A(d), .B(c), .Y(n16));
  AND2X1 g02(.A(n16), .B(n15), .Y(n17));
  INVX1  g03(.A(n17), .Y(n18));
  AND2X1 g04(.A(j), .B(i), .Y(n19));
  INVX1  g05(.A(f), .Y(n20));
  AND2X1 g06(.A(n20), .B(e), .Y(n21));
  INVX1  g07(.A(e), .Y(n22));
  AND2X1 g08(.A(f), .B(n22), .Y(n23));
  OR2X1  g09(.A(h), .B(g), .Y(n24));
  OR2X1  g10(.A(n24), .B(n23), .Y(n25));
  OR2X1  g11(.A(n25), .B(n21), .Y(n26));
  OR2X1  g12(.A(n26), .B(n19), .Y(n27));
  INVX1  g13(.A(n27), .Y(n28));
  OR2X1  g14(.A(n28), .B(n18), .Y(n29));
  INVX1  g15(.A(n29), .Y(y1));
  OR2X1  g16(.A(n26), .B(n18), .Y(n31));
  INVX1  g17(.A(n31), .Y(n32));
  AND2X1 g18(.A(n26), .B(n19), .Y(n33));
  OR2X1  g19(.A(n33), .B(n32), .Y(y2));
  OR2X1  g20(.A(n33), .B(n17), .Y(y5));
  AND2X1 g21(.A(y5), .B(n29), .Y(y3));
  AND2X1 g22(.A(y5), .B(n27), .Y(y4));
endmodule
```

### case9

#### 运行要求

| Case | Area< | Delay< |
| ---- | ----- | ------ |
| 9    | 532   | 52     |

#### 运行结果

```bash
cmd运行结果

```

#### 运行截图

不另外加代码的综合结果：

<img src="picture\case9run_ori.png" alt="case9run_ori" width="600px;" />

优化了的综合结果：

<img src="picture\case9run.png" alt="case9run" width="600px;" />

#### 输出结果

```verilog
// Benchmark "case2" written by ABC on Thu Jun 01 20:41:21 2023

```

### case10

#### 运行要求

| Case | Area< | Delay< |
| ---- | ----- | ------ |
| 10   | 330   | 34     |

#### 运行结果

```bash
The number of gates read = 6.
Read 6 gates from file "cadence.genlib".
Selected 6 functionally unique gates. Time =    0.00 sec
Created 2 rules and 2 matches. Time =    0.00 sec
A simple supergate library is derived from gate library "cadence.genlib".
Loaded 2 unique 5-input supergates from "cadence.super".  Time =    0.00 sec
case10       : i/o =    4/    2  lat =    0  nd =    13  edge =     23  area =86.00  delay =11.00  lev =  5
```

#### 运行截图

不另外加代码的综合结果：

<img src="picture\case10run_ori.png" alt="case10run_ori" width="600px;" />

优化了的综合结果：

<img src="picture\case10run.png" alt="case10run" width="600px;" />

#### 输出结果

```verilog
// Benchmark "case10" written by ABC on Fri Jun 02 02:39:36 2023

module case10 ( 
    a, b, c, d,
    y1, y2  );
  input  a, b, c, d;
  output y1, y2;
  wire n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16;
  INVX1  g00(.A(c), .Y(n6));
  OR2X1  g01(.A(n6), .B(b), .Y(n7));
  INVX1  g02(.A(b), .Y(n8));
  OR2X1  g03(.A(c), .B(n8), .Y(n9));
  AND2X1 g04(.A(n9), .B(n7), .Y(n10));
  AND2X1 g05(.A(n10), .B(a), .Y(n11));
  INVX1  g06(.A(a), .Y(n12));
  AND2X1 g07(.A(c), .B(n8), .Y(n13));
  AND2X1 g08(.A(n6), .B(b), .Y(n14));
  OR2X1  g09(.A(n14), .B(n13), .Y(n15));
  AND2X1 g10(.A(n15), .B(n12), .Y(n16));
  OR2X1  g11(.A(n16), .B(n11), .Y(y1));
  OR2X1  g12(.A(n16), .B(n11), .Y(y2));
endmodule

```

## 最终结果对比

| Case | Area< | Delay< | 优化人 | AREA   | DELAY |
| ---- | ----- | ------ | ------ | ------ | ----- |
| 1    | 204   | 14     |        |        |       |
| 2    | 366   | 25     | 郑志宇 | 78.00  | 7.00  |
| 3    | 388   | 18     |        |        |       |
| 4    | 174   | 9      |        |        |       |
| 5    | 336   | 89     |        |        |       |
| 6    | 248   | 21     | 邱峻蓬 | 92.00  | 11.00 |
| 7    | 294   | 32     |        |        |       |
| 8    | 668   | 55     | 郑志宇 | 148.00 | 16.00 |
| 9    | 532   | 52     |        |        |       |
| 10   | 330   | 34     | 邱峻蓬 | 86.00  | 11.00 |
