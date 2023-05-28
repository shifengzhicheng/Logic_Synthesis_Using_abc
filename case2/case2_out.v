// Benchmark "case2" written by ABC on Sun May 28 19:14:59 2023

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


