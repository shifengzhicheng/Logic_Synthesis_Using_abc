// Benchmark "case8" written by ABC on Thu Jun 01 20:51:33 2023

module case8 ( 
    a, b, c, d, e, f, g, h, i, j,
    y1, y2, y3, y4, y5  );
  input  a, b, c, d, e, f, g, h, i, j;
  output y1, y2, y3, y4, y5;
  wire n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
    n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n43,
    n44, n45, n46, n48, n49, n50, n54, n55, n56, n58, n68, n70, n74, n81,
    n92, n101, n104, n105;
  OR2X1  g00(.A(b), .B(a), .Y(n15));
  INVX1  g01(.A(n15), .Y(n16));
  INVX1  g02(.A(c), .Y(n17));
  INVX1  g03(.A(d), .Y(n18));
  OR2X1  g04(.A(n18), .B(n17), .Y(n19));
  OR2X1  g05(.A(n19), .B(n16), .Y(n20));
  AND2X1 g06(.A(j), .B(i), .Y(n21));
  OR2X1  g07(.A(n21), .B(n20), .Y(n22));
  INVX1  g08(.A(n22), .Y(n23));
  AND2X1 g09(.A(n21), .B(n20), .Y(n24));
  OR2X1  g10(.A(n24), .B(n23), .Y(n25));
  INVX1  g11(.A(e), .Y(n26));
  AND2X1 g12(.A(f), .B(n26), .Y(n27));
  INVX1  g13(.A(f), .Y(n28));
  AND2X1 g14(.A(n28), .B(e), .Y(n29));
  OR2X1  g15(.A(n29), .B(n27), .Y(n30));
  OR2X1  g16(.A(h), .B(g), .Y(n31));
  OR2X1  g17(.A(n31), .B(n30), .Y(n32));
  AND2X1 g18(.A(d), .B(c), .Y(n33));
  AND2X1 g19(.A(n33), .B(n15), .Y(n34));
  OR2X1  g20(.A(n34), .B(n32), .Y(n35));
  INVX1  g21(.A(n32), .Y(n36));
  INVX1  g22(.A(n21), .Y(n37));
  OR2X1  g23(.A(n37), .B(n34), .Y(n38));
  AND2X1 g24(.A(n38), .B(n22), .Y(n39));
  OR2X1  g25(.A(n39), .B(n36), .Y(n40));
  AND2X1 g26(.A(n35), .B(n25), .Y(n41));
  AND2X1 g27(.A(n25), .B(n32), .Y(n43));
  INVX1  g28(.A(n35), .Y(n44));
  OR2X1  g29(.A(n44), .B(n39), .Y(n45));
  OR2X1  g30(.A(n45), .B(n43), .Y(n46));
  OR2X1  g31(.A(n43), .B(n20), .Y(n48));
  OR2X1  g32(.A(n40), .B(n34), .Y(n49));
  AND2X1 g33(.A(n49), .B(n48), .Y(n50));
  AND2X1 g34(.A(n40), .B(n34), .Y(n54));
  AND2X1 g35(.A(n43), .B(n20), .Y(n55));
  OR2X1  g36(.A(n55), .B(n54), .Y(n56));
  AND2X1 g37(.A(n41), .B(n40), .Y(n58));
  AND2X1 g38(.A(n56), .B(n45), .Y(n68));
  AND2X1 g39(.A(n50), .B(n41), .Y(n70));
  OR2X1  g40(.A(n70), .B(n68), .Y(y1));
  OR2X1  g41(.A(n68), .B(n70), .Y(n74));
  OR2X1  g42(.A(n55), .B(n74), .Y(n81));
  OR2X1  g43(.A(n55), .B(n68), .Y(n92));
  OR2X1  g44(.A(n58), .B(n92), .Y(y2));
  AND2X1 g45(.A(n56), .B(n41), .Y(y3));
  OR2X1  g46(.A(n92), .B(n23), .Y(n101));
  OR2X1  g47(.A(n46), .B(n101), .Y(n104));
  INVX1  g48(.A(n104), .Y(n105));
  OR2X1  g49(.A(n105), .B(n81), .Y(y4));
  OR2X1  g50(.A(n56), .B(n41), .Y(y5));
endmodule


