// Benchmark "case1" written by ABC on Sun May 28 17:17:23 2023

module case1 ( 
    a, b, c, d,
    x, y, z  );
  input  a, b, c, d;
  output x, y, z;
  wire n7, n8, n9, n10, n11, n12, n13, n15, n16, n17, n18, n19, n21, n22,
    n23, n24, n25;
  OR2X1  g00(.A(b), .B(a), .Y(n7));
  INVX1  g01(.A(n7), .Y(n8));
  OR2X1  g02(.A(d), .B(c), .Y(n9));
  INVX1  g03(.A(n9), .Y(n10));
  OR2X1  g04(.A(n10), .B(n8), .Y(n11));
  AND2X1 g05(.A(d), .B(c), .Y(n12));
  INVX1  g06(.A(n12), .Y(n13));
  AND2X1 g07(.A(n13), .B(n11), .Y(x));
  AND2X1 g08(.A(b), .B(a), .Y(n15));
  AND2X1 g09(.A(n15), .B(n10), .Y(n16));
  OR2X1  g10(.A(n15), .B(n12), .Y(n17));
  OR2X1  g11(.A(n17), .B(n10), .Y(n18));
  INVX1  g12(.A(n18), .Y(n19));
  OR2X1  g13(.A(n19), .B(n16), .Y(y));
  AND2X1 g14(.A(n10), .B(n7), .Y(n21));
  INVX1  g15(.A(a), .Y(n22));
  INVX1  g16(.A(b), .Y(n23));
  OR2X1  g17(.A(n23), .B(n22), .Y(n24));
  AND2X1 g18(.A(n24), .B(n12), .Y(n25));
  OR2X1  g19(.A(n25), .B(n21), .Y(z));
endmodule


