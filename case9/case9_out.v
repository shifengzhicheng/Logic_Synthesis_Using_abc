// Benchmark "case9" written by ABC on Sun May 28 17:12:38 2023

module case9 ( 
    a, b, c, d, e, f, g, h, i, j,
    y1, y2, y3, y4, y5  );
  input  a, b, c, d, e, f, g, h, i, j;
  output y1, y2, y3, y4, y5;
  wire n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n29,
    n30, n31, n32, n33, n34, n35, n36, n37, n39, n40, n41, n42;
  AND2X1 g00(.A(b), .B(a), .Y(n15));
  OR2X1  g01(.A(d), .B(c), .Y(n16));
  INVX1  g02(.A(n16), .Y(n17));
  OR2X1  g03(.A(n17), .B(n15), .Y(n18));
  AND2X1 g04(.A(f), .B(e), .Y(n19));
  OR2X1  g05(.A(f), .B(e), .Y(n20));
  INVX1  g06(.A(n20), .Y(n21));
  INVX1  g07(.A(g), .Y(n22));
  INVX1  g08(.A(h), .Y(n23));
  OR2X1  g09(.A(n23), .B(n22), .Y(n24));
  OR2X1  g10(.A(n24), .B(n21), .Y(n25));
  OR2X1  g11(.A(n25), .B(n19), .Y(n26));
  INVX1  g12(.A(n26), .Y(n27));
  AND2X1 g13(.A(n27), .B(n18), .Y(y1));
  OR2X1  g14(.A(j), .B(i), .Y(n29));
  INVX1  g15(.A(n29), .Y(n30));
  OR2X1  g16(.A(n30), .B(n18), .Y(n31));
  INVX1  g17(.A(a), .Y(n32));
  INVX1  g18(.A(b), .Y(n33));
  OR2X1  g19(.A(n33), .B(n32), .Y(n34));
  AND2X1 g20(.A(n16), .B(n34), .Y(n35));
  OR2X1  g21(.A(n29), .B(n35), .Y(n36));
  AND2X1 g22(.A(n36), .B(n31), .Y(n37));
  OR2X1  g23(.A(n37), .B(n27), .Y(y2));
  OR2X1  g24(.A(n30), .B(n27), .Y(n39));
  OR2X1  g25(.A(n39), .B(n35), .Y(n40));
  INVX1  g26(.A(n40), .Y(n41));
  AND2X1 g27(.A(n39), .B(n35), .Y(n42));
  OR2X1  g28(.A(n42), .B(n41), .Y(y3));
  AND2X1 g29(.A(n39), .B(n36), .Y(y4));
  OR2X1  g30(.A(n37), .B(n27), .Y(y5));
endmodule


