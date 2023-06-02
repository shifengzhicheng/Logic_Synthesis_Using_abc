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


