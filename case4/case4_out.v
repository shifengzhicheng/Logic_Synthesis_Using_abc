// Benchmark "case4" written by ABC on Fri Jun 02 11:30:44 2023

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


