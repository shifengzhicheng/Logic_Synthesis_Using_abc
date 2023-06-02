// Benchmark "case6" written by ABC on Fri Jun 02 09:56:35 2023

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


