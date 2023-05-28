// Benchmark "case5" written by ABC on Sun May 28 17:11:38 2023

module case5 ( 
    a, b, c, d, e, f,
    x, y, z  );
  input  a, b, c, d, e, f;
  output x, y, z;
  wire n9, n10, n11, n12, n14, n15, n16, n17, n18, n19, n20, n22, n23, n24,
    n25, n26;
  INVX1  g00(.A(b), .Y(n9));
  INVX1  g01(.A(c), .Y(n10));
  OR2X1  g02(.A(n10), .B(n9), .Y(n11));
  AND2X1 g03(.A(n11), .B(d), .Y(n12));
  OR2X1  g04(.A(n12), .B(a), .Y(x));
  INVX1  g05(.A(a), .Y(n14));
  INVX1  g06(.A(f), .Y(n15));
  OR2X1  g07(.A(n15), .B(n14), .Y(n16));
  OR2X1  g08(.A(n16), .B(e), .Y(n17));
  INVX1  g09(.A(n17), .Y(n18));
  OR2X1  g10(.A(n18), .B(n10), .Y(n19));
  AND2X1 g11(.A(d), .B(b), .Y(n20));
  AND2X1 g12(.A(n20), .B(n19), .Y(y));
  OR2X1  g13(.A(d), .B(c), .Y(n22));
  AND2X1 g14(.A(n17), .B(b), .Y(n23));
  INVX1  g15(.A(d), .Y(n24));
  OR2X1  g16(.A(n24), .B(n10), .Y(n25));
  OR2X1  g17(.A(n25), .B(n23), .Y(n26));
  AND2X1 g18(.A(n26), .B(n22), .Y(z));
endmodule


