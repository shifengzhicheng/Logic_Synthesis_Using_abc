// Benchmark "case6" written by ABC on Sun May 28 17:11:59 2023

module case6 ( 
    a, b, c, d, e, f,
    y1, y2, y3  );
  input  a, b, c, d, e, f;
  output y1, y2, y3;
  wire n9, n10, n11, n12, n13, n14, n15, n16, n18, n19, n20, n21, n22;
  OR2X1  g00(.A(f), .B(e), .Y(n9));
  INVX1  g01(.A(e), .Y(n10));
  INVX1  g02(.A(f), .Y(n11));
  OR2X1  g03(.A(n11), .B(n10), .Y(n12));
  AND2X1 g04(.A(n12), .B(n9), .Y(n13));
  INVX1  g05(.A(a), .Y(n14));
  INVX1  g06(.A(b), .Y(n15));
  OR2X1  g07(.A(n15), .B(n14), .Y(n16));
  OR2X1  g08(.A(n16), .B(n13), .Y(y2));
  INVX1  g09(.A(n9), .Y(n18));
  AND2X1 g10(.A(f), .B(e), .Y(n19));
  OR2X1  g11(.A(n19), .B(n18), .Y(n20));
  OR2X1  g12(.A(d), .B(c), .Y(n21));
  OR2X1  g13(.A(n21), .B(n20), .Y(n22));
  AND2X1 g14(.A(n22), .B(y2), .Y(y1));
  INVX1  g15(.A(n22), .Y(y3));
endmodule


