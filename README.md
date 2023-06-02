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
| 1    | 204   | 14     | 周翔   |
| 2    | 366   | 25     | 郑志宇 |
| 3    | 388   | 18     | 周翔   |
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
balance分为两步：covering和tree-balancing。其中covering将子集之间没有反相器且没有外部扇出的两输入与门组合在一起形成一个多输入与门：
<img src="picture\covering.png" alt="covering" width="600px;" />
    tree-balancing将covering得到的多输入与门分解为两输入与门，试图减少AIG深度：
<img src="picture\tree_balancing.png" alt="tree_balancing" width="600px;" />

2. cleanup – 移除当前逻辑网络中的悬挂节点，即不扇出到 PO 和锁存器中的逻辑节点。 
3. collapse – 递归地将扇入节点组合成扇出节点，形成一个网络，其中每个CO由一个节点生成，其扇入是 CI。collapsing是通过使用BDD构建全局函数来执行的，因此仅限于相对较小的电路。collapsing后，节点功能使用BDD表示。 
4. dsd – 使用 Bertacco/Damiani (ICCAD'97) 的算法应用disjoint-support decomposition。
5. fx – 通过使用 Rajski/Vasudevamurthi (TCAD'92) 的算法提取two-cube divisors和two-literal single-cube divisors来检测逻辑共享。
6. multi – 将双输入门 AIG 扩展为多输入与门网络。
7. refactor – 对 AIG 中的逻辑锥体进行迭代折叠和重构，试图减少 AIG 节点的数量和逻辑层的数量。
8. renode – 假设输入是 AIG。 在此 AIG 中创建节点边界并折叠中间逻辑以形成更大的节点。
9. rewrite – 执行 AIG 的 DAG 感知重写，试图减少 AIG 节点的数量和逻辑级别的数量。通过迭代地选择一个节点上的AIG子图，预先计算其所有NPN结果并保存子图，用子图中效果更佳的子图来替换当前AIG子图，以此来达到最小化节点数量的目的。
<img src="picture\rewrite.png" alt="rewrite" width="600px;" />

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

#### 运行要求

| Case | Area< | Delay< |
| ---- | ----- | ------ |
| 1    | 204   | 14     |

#### 运行结果

```bash
The number of gates read = 6.
Read 6 gates from file "cadence.genlib".
Selected 6 functionally unique gates. Time =    0.00 sec
Created 2 rules and 2 matches. Time =    0.00 sec
Cleanup removed 0 primary inputs without fanout.
Cleanup removed 0 primary outputs driven by const-0.
A simple supergate library is derived from gate library "cadence.genlib".
Loaded 2 unique 5-input supergates from "cadence.super".  Time =    0.00 sec
case1        : i/o =    4/    3  lat =    0  nd =    20  edge =     34  area =124.00  delay = 9.00  lev =  6
```

#### 运行截图

不另外加代码的综合结果：

<img src="picture\case1run_ori.png" alt="case1run_ori" width="600px;" />

优化了的综合结果：

<img src="picture\case1run.png" alt="case1run" width="600px;" />

#### 输出结果

```verilog
// Benchmark "case1" written by ABC on Fri Jun 02 11:14:18 2023
module case1 ( 
    n1, n2, n3, n4,
    n5, n6, n7  );
  input  n1, n2, n3, n4;
  output n5, n6, n7;
  wire n7_1, n8, n9, n10, n11, n12, n13, n15, n16, n17, n18, n19, n21, n22,
    n23, n24, n25;
  OR2X1  g00(.A(n2), .B(n1), .Y(n7_1));
  INVX1  g01(.A(n7_1), .Y(n8));
  OR2X1  g02(.A(n4), .B(n3), .Y(n9));
  INVX1  g03(.A(n9), .Y(n10));
  OR2X1  g04(.A(n10), .B(n8), .Y(n11));
  AND2X1 g05(.A(n4), .B(n3), .Y(n12));
  INVX1  g06(.A(n12), .Y(n13));
  AND2X1 g07(.A(n13), .B(n11), .Y(n5));
  AND2X1 g08(.A(n2), .B(n1), .Y(n15));
  OR2X1  g09(.A(n12), .B(n10), .Y(n16));
  OR2X1  g10(.A(n16), .B(n15), .Y(n17));
  INVX1  g11(.A(n17), .Y(n18));
  AND2X1 g12(.A(n15), .B(n10), .Y(n19));
  OR2X1  g13(.A(n19), .B(n18), .Y(n6));
  INVX1  g14(.A(n1), .Y(n21));
  INVX1  g15(.A(n2), .Y(n22));
  OR2X1  g16(.A(n22), .B(n21), .Y(n23));
  AND2X1 g17(.A(n23), .B(n12), .Y(n24));
  AND2X1 g18(.A(n10), .B(n7_1), .Y(n25));
  OR2X1  g19(.A(n25), .B(n24), .Y(n7));
endmodule
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
The number of gates read = 6.
Read 6 gates from file "cadence.genlib".
Selected 6 functionally unique gates. Time =    0.00 sec
Created 2 rules and 2 matches. Time =    0.00 sec
Cleanup removed 0 dangling nodes.
A simple supergate library is derived from gate library "cadence.genlib".
Loaded 2 unique 5-input supergates from "cadence.super".  Time =    0.00 sec
case3        : i/o =    7/    3  lat =    0  nd =    32  edge =     56  area =208.00  delay =13.00  lev =  6
```

#### 运行截图

不另外加代码的综合结果：

<img src="picture\case3run_ori.png" alt="case3run_ori" width="600px;" />

优化了的综合结果：

<img src="picture\case3run.png" alt="case3run" width="600px;" />

#### 输出结果

```verilog
// Benchmark "case3" written by ABC on Fri Jun 02 11:17:19 2023
module case3 ( 
    a, b, c, d, e, f, g,
    x, y, z  );
  input  a, b, c, d, e, f, g;
  output x, y, z;
  wire n10, n11, n12, n13, n14, n15, n16, n17, n18, n20, n21, n22, n23, n24,
    n25, n26, n27, n28, n29, n31, n32, n33, n34, n35, n36, n37, n38, n39,
    n40;
  INVX1  g00(.A(c), .Y(n10));
  INVX1  g01(.A(a), .Y(n11));
  INVX1  g02(.A(b), .Y(n12));
  OR2X1  g03(.A(n12), .B(n11), .Y(n13));
  OR2X1  g04(.A(n13), .B(n10), .Y(n14));
  INVX1  g05(.A(d), .Y(n15));
  INVX1  g06(.A(e), .Y(n16));
  OR2X1  g07(.A(n16), .B(n15), .Y(n17));
  OR2X1  g08(.A(n17), .B(n14), .Y(n18));
  INVX1  g09(.A(n18), .Y(x));
  OR2X1  g10(.A(g), .B(e), .Y(n20));
  INVX1  g11(.A(g), .Y(n21));
  OR2X1  g12(.A(n21), .B(n16), .Y(n22));
  AND2X1 g13(.A(n22), .B(n20), .Y(n23));
  OR2X1  g14(.A(f), .B(d), .Y(n24));
  INVX1  g15(.A(f), .Y(n25));
  OR2X1  g16(.A(n25), .B(n15), .Y(n26));
  AND2X1 g17(.A(n26), .B(n24), .Y(n27));
  OR2X1  g18(.A(n27), .B(n23), .Y(n28));
  OR2X1  g19(.A(n28), .B(c), .Y(n29));
  OR2X1  g20(.A(n29), .B(b), .Y(y));
  AND2X1 g21(.A(b), .B(a), .Y(n31));
  AND2X1 g22(.A(g), .B(e), .Y(n32));
  AND2X1 g23(.A(n32), .B(n31), .Y(n33));
  AND2X1 g24(.A(n22), .B(c), .Y(n34));
  OR2X1  g25(.A(n34), .B(n33), .Y(n35));
  OR2X1  g26(.A(n35), .B(d), .Y(n36));
  OR2X1  g27(.A(n22), .B(n13), .Y(n37));
  OR2X1  g28(.A(n32), .B(n10), .Y(n38));
  AND2X1 g29(.A(n38), .B(n37), .Y(n39));
  OR2X1  g30(.A(n39), .B(n15), .Y(n40));
  AND2X1 g31(.A(n40), .B(n36), .Y(z));
endmodule
```

### case4

#### 运行要求

| Case | Area< | Delay< |
| ---- | ----- | ------ |
| 4    | 174   | 9      |

#### 运行结果

```bash
cmd运行结果
The number of gates read = 6.
Read 6 gates from file "cadence.genlib".
Selected 6 functionally unique gates. Time =    0.00 sec
Created 2 rules and 2 matches. Time =    0.00 sec
Warning: The network was strashed and balanced before mapping.
A simple supergate library is derived from gate library "cadence.genlib".
Loaded 2 unique 5-input supergates from "cadence.super".  Time =    0.00 sec
case4        : i/o =    7/    3  lat =    0  nd =    14  edge =     22  area =76.00  delay = 7.00  lev =  4
```

#### 运行截图

不另外加代码的综合结果：

<img src="picture\case4run_ori.png" alt="case4run_ori" width="600px;" />

优化了的综合结果：

<img src="picture\case4run.png" alt="case4run" width="600px;" />

#### 输出结果

```verilog
// Benchmark "case2" written by ABC on Thu Jun 01 20:41:21 2023
module case4 ( 
    a, b, c, d, e, f, g,
    x, y, z  );
  input  a, b, c, d, e, f, g;
  output x, y, z;
  wire n10, n12, n13, n14, n15, n17, n18, n19, n20, n21, n22;
  AND2X1 g00(.A(e), .B(a), .Y(n10));
  AND2X1 g01(.A(n10), .B(b), .Y(x));
  INVX1  g02(.A(d), .Y(n12));
  INVX1  g03(.A(b), .Y(n13));
  INVX1  g04(.A(e), .Y(n14));
  OR2X1  g05(.A(n14), .B(n13), .Y(n15));
  OR2X1  g06(.A(n15), .B(n12), .Y(y));
  INVX1  g07(.A(c), .Y(n17));
  INVX1  g08(.A(g), .Y(n18));
  OR2X1  g09(.A(n18), .B(n17), .Y(n19));
  INVX1  g10(.A(f), .Y(n20));
  OR2X1  g11(.A(n20), .B(n14), .Y(n21));
  OR2X1  g12(.A(n21), .B(n12), .Y(n22));
  OR2X1  g13(.A(n22), .B(n19), .Y(z));
endmodule
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

<img src="picture\case5run_ori.png" alt="case5run_ori" width="600px;" />

优化了的综合结果：

<img src="picture\case5run.png" alt="case5run" width="600px;" />

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
The number of gates read = 6.
Read 6 gates from file "cadence.genlib".
Selected 6 functionally unique gates. Time =    0.00 sec
Created 2 rules and 2 matches. Time =    0.00 sec
Warning: The network was strashed and balanced before mapping.
A simple supergate library is derived from gate library "cadence.genlib".
Loaded 2 unique 5-input supergates from "cadence.super".  Time =    0.00 sec
case7        : i/o =    6/    3  lat =    0  nd =    15  edge =     25  area =90.00  delay =11.00  lev =  5
```

#### 运行截图

不另外加代码的综合结果：

<img src="picture\case7run_ori.png" alt="case7run_ori" width="600px;" />

优化了的综合结果：

<img src="picture\case7run.png" alt="case7run" width="600px;" />

#### 输出结果

```verilog
// Benchmark "case2" written by ABC on Thu Jun 01 20:41:21 2023
module case7 ( 
    a, b, c, d, e, f,
    y1, y2, y3  );
  input  a, b, c, d, e, f;
  output y1, y2, y3;
  wire n9, n10, n11, n12, n13, n14, n15, n16, n17, n20, n21, n22;
  INVX1  g00(.A(f), .Y(n9));
  INVX1  g01(.A(c), .Y(n10));
  INVX1  g02(.A(d), .Y(n11));
  OR2X1  g03(.A(n11), .B(n10), .Y(n12));
  AND2X1 g04(.A(n12), .B(n9), .Y(n13));
  OR2X1  g05(.A(n13), .B(e), .Y(n14));
  INVX1  g06(.A(n12), .Y(n15));
  OR2X1  g07(.A(b), .B(a), .Y(n16));
  OR2X1  g08(.A(n16), .B(n15), .Y(n17));
  AND2X1 g09(.A(n17), .B(n14), .Y(y1));
  OR2X1  g10(.A(n16), .B(f), .Y(y2));
  INVX1  g11(.A(e), .Y(n20));
  OR2X1  g12(.A(n9), .B(n20), .Y(n21));
  AND2X1 g13(.A(n21), .B(y2), .Y(n22));
  OR2X1  g14(.A(n22), .B(n15), .Y(y3));
endmodule

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

<img src="picture\case8run_ori.png" alt="case8run_ori" width="600px;" />

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
| 1    | 204   | 14     | 周翔   | 124.00 | 9.00  |
| 2    | 366   | 25     | 郑志宇 | 78.00  | 7.00  |
| 3    | 388   | 18     | 周翔   | 208.00 | 13.00 |
| 4    | 174   | 9      | 任钰浩 | 76.00  | 7.00  |
| 5    | 336   | 89     |        |        |       |
| 6    | 248   | 21     | 邱峻蓬 | 92.00  | 11.00 |
| 7    | 294   | 32     | 任钰浩 | 90.00  | 11.00 |
| 8    | 668   | 55     | 郑志宇 | 148.00 | 16.00 |
| 9    | 532   | 52     |        |        |       |
| 10   | 330   | 34     | 邱峻蓬 | 86.00  | 11.00 |
