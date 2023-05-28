// Benchmark "case4" written by ABC on Sun May 28 17:13:36 2023

module case4 ( 
    a, b, c, d, e, f, g,
    x, y, z  );
  input  a, b, c, d, e, f, g;
  output x, y, z;
  wire n10, n12, n13, n15, n16, n17, n18, n19, n20, n21;
  AND2X1 g00(.A(e), .B(b), .Y(n10));
  AND2X1 g01(.A(n10), .B(a), .Y(x));
  INVX1  g02(.A(d), .Y(n12));
  INVX1  g03(.A(n10), .Y(n13));
  OR2X1  g04(.A(n13), .B(n12), .Y(y));
  INVX1  g05(.A(f), .Y(n15));
  INVX1  g06(.A(g), .Y(n16));
  OR2X1  g07(.A(n16), .B(n15), .Y(n17));
  INVX1  g08(.A(e), .Y(n18));
  INVX1  g09(.A(c), .Y(n19));
  OR2X1  g10(.A(n12), .B(n19), .Y(n20));
  OR2X1  g11(.A(n20), .B(n18), .Y(n21));
  OR2X1  g12(.A(n21), .B(n17), .Y(z));
endmodule


