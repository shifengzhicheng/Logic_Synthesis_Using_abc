// Benchmark "case3" written by ABC on Fri Jun 02 11:17:19 2023

module case3 ( 
    a, b, c, d, e, f, g,
    x, y, z  );
  input  a, b, c, d, e, f, g;
  output x, y, z;
  wire n10, n11, n12, n13, n14, n15, n16, n17, n18, n20, n21, n22, n23, n24,
    n25, n26, n27, n28, n29, n31, n32, n33, n34, n35, n36, n37, n38, n39,
    n40;
  INVX1  g00(.A(c), .Y(n10));
  INVX1  g01(.A(a), .Y(n11));
  INVX1  g02(.A(b), .Y(n12));
  OR2X1  g03(.A(n12), .B(n11), .Y(n13));
  OR2X1  g04(.A(n13), .B(n10), .Y(n14));
  INVX1  g05(.A(d), .Y(n15));
  INVX1  g06(.A(e), .Y(n16));
  OR2X1  g07(.A(n16), .B(n15), .Y(n17));
  OR2X1  g08(.A(n17), .B(n14), .Y(n18));
  INVX1  g09(.A(n18), .Y(x));
  OR2X1  g10(.A(g), .B(e), .Y(n20));
  INVX1  g11(.A(g), .Y(n21));
  OR2X1  g12(.A(n21), .B(n16), .Y(n22));
  AND2X1 g13(.A(n22), .B(n20), .Y(n23));
  OR2X1  g14(.A(f), .B(d), .Y(n24));
  INVX1  g15(.A(f), .Y(n25));
  OR2X1  g16(.A(n25), .B(n15), .Y(n26));
  AND2X1 g17(.A(n26), .B(n24), .Y(n27));
  OR2X1  g18(.A(n27), .B(n23), .Y(n28));
  OR2X1  g19(.A(n28), .B(c), .Y(n29));
  OR2X1  g20(.A(n29), .B(b), .Y(y));
  AND2X1 g21(.A(b), .B(a), .Y(n31));
  AND2X1 g22(.A(g), .B(e), .Y(n32));
  AND2X1 g23(.A(n32), .B(n31), .Y(n33));
  AND2X1 g24(.A(n22), .B(c), .Y(n34));
  OR2X1  g25(.A(n34), .B(n33), .Y(n35));
  OR2X1  g26(.A(n35), .B(d), .Y(n36));
  OR2X1  g27(.A(n22), .B(n13), .Y(n37));
  OR2X1  g28(.A(n32), .B(n10), .Y(n38));
  AND2X1 g29(.A(n38), .B(n37), .Y(n39));
  OR2X1  g30(.A(n39), .B(n15), .Y(n40));
  AND2X1 g31(.A(n40), .B(n36), .Y(z));
endmodule


