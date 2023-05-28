// Benchmark "case3" written by ABC on Sun May 28 17:09:14 2023

module case3 ( 
    a, b, c, d, e, f, g,
    x, y, z  );
  input  a, b, c, d, e, f, g;
  output x, y, z;
  wire n10, n11, n12, n13, n14, n15, n16, n17, n18, n20, n21, n22, n23, n24,
    n25, n26, n27, n28, n29, n31, n32, n33, n34, n35, n36, n37, n38, n39,
    n40;
  INVX1  g00(.A(a), .Y(n10));
  INVX1  g01(.A(b), .Y(n11));
  OR2X1  g02(.A(n11), .B(n10), .Y(n12));
  INVX1  g03(.A(c), .Y(n13));
  INVX1  g04(.A(d), .Y(n14));
  INVX1  g05(.A(e), .Y(n15));
  OR2X1  g06(.A(n15), .B(n14), .Y(n16));
  OR2X1  g07(.A(n16), .B(n13), .Y(n17));
  OR2X1  g08(.A(n17), .B(n12), .Y(n18));
  INVX1  g09(.A(n18), .Y(x));
  INVX1  g10(.A(f), .Y(n20));
  OR2X1  g11(.A(n20), .B(n14), .Y(n21));
  OR2X1  g12(.A(f), .B(d), .Y(n22));
  AND2X1 g13(.A(n22), .B(n21), .Y(n23));
  INVX1  g14(.A(g), .Y(n24));
  OR2X1  g15(.A(n24), .B(n15), .Y(n25));
  OR2X1  g16(.A(g), .B(e), .Y(n26));
  AND2X1 g17(.A(n26), .B(n25), .Y(n27));
  OR2X1  g18(.A(c), .B(b), .Y(n28));
  OR2X1  g19(.A(n28), .B(n27), .Y(n29));
  OR2X1  g20(.A(n29), .B(n23), .Y(y));
  OR2X1  g21(.A(n25), .B(n12), .Y(n31));
  AND2X1 g22(.A(g), .B(e), .Y(n32));
  OR2X1  g23(.A(n32), .B(n13), .Y(n33));
  AND2X1 g24(.A(n33), .B(n31), .Y(n34));
  AND2X1 g25(.A(n34), .B(d), .Y(n35));
  AND2X1 g26(.A(b), .B(a), .Y(n36));
  AND2X1 g27(.A(n32), .B(n36), .Y(n37));
  AND2X1 g28(.A(n25), .B(c), .Y(n38));
  OR2X1  g29(.A(n38), .B(n37), .Y(n39));
  AND2X1 g30(.A(n39), .B(n14), .Y(n40));
  OR2X1  g31(.A(n40), .B(n35), .Y(z));
endmodule


