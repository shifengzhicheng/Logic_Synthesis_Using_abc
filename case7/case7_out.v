// Benchmark "case7" written by ABC on Fri Jun 02 13:33:44 2023

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


