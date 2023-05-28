// Benchmark "case8" written by ABC on Sun May 28 19:20:47 2023

module case8 ( 
    a, b, c, d, e, f, g, h, i, j,
    y1, y2, y3, y4, y5  );
  input  a, b, c, d, e, f, g, h, i, j;
  output y1, y2, y3, y4, y5;
  wire n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
    n29, n31, n32, n33;
  OR2X1  g00(.A(b), .B(a), .Y(n15));
  AND2X1 g01(.A(d), .B(c), .Y(n16));
  AND2X1 g02(.A(n16), .B(n15), .Y(n17));
  INVX1  g03(.A(n17), .Y(n18));
  AND2X1 g04(.A(j), .B(i), .Y(n19));
  INVX1  g05(.A(f), .Y(n20));
  AND2X1 g06(.A(n20), .B(e), .Y(n21));
  INVX1  g07(.A(e), .Y(n22));
  AND2X1 g08(.A(f), .B(n22), .Y(n23));
  OR2X1  g09(.A(h), .B(g), .Y(n24));
  OR2X1  g10(.A(n24), .B(n23), .Y(n25));
  OR2X1  g11(.A(n25), .B(n21), .Y(n26));
  OR2X1  g12(.A(n26), .B(n19), .Y(n27));
  INVX1  g13(.A(n27), .Y(n28));
  OR2X1  g14(.A(n28), .B(n18), .Y(n29));
  INVX1  g15(.A(n29), .Y(y1));
  OR2X1  g16(.A(n26), .B(n18), .Y(n31));
  INVX1  g17(.A(n31), .Y(n32));
  AND2X1 g18(.A(n26), .B(n19), .Y(n33));
  OR2X1  g19(.A(n33), .B(n32), .Y(y2));
  OR2X1  g20(.A(n33), .B(n17), .Y(y5));
  AND2X1 g21(.A(y5), .B(n29), .Y(y3));
  AND2X1 g22(.A(y5), .B(n27), .Y(y4));
endmodule


