// Benchmark "case10" written by ABC on Sun May 28 17:13:05 2023

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


