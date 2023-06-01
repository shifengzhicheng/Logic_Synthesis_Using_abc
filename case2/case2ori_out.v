// Benchmark "case2" written by ABC on Thu Jun 01 20:45:47 2023

module case2 ( 
    a, b, c, d, e,
    x, y, z  );
  input  a, b, c, d, e;
  output x, y, z;
  wire n8, n9, n10, n11, n12, n13, n14, n15, n17, n18, n19, n20, n21, n22,
    n23, n28, n29, n30, n31, n32, n33, n34, n35, n39, n40, n41, n42, n43,
    n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
    n58;
  INVX1  g00(.A(a), .Y(n8));
  AND2X1 g01(.A(e), .B(n8), .Y(n9));
  INVX1  g02(.A(e), .Y(n10));
  AND2X1 g03(.A(n10), .B(a), .Y(n11));
  OR2X1  g04(.A(n11), .B(n9), .Y(n12));
  AND2X1 g05(.A(b), .B(a), .Y(n13));
  OR2X1  g06(.A(d), .B(c), .Y(n14));
  AND2X1 g07(.A(n14), .B(n13), .Y(n15));
  AND2X1 g08(.A(n15), .B(n12), .Y(x));
  INVX1  g09(.A(d), .Y(n17));
  INVX1  g10(.A(c), .Y(n18));
  OR2X1  g11(.A(n18), .B(n8), .Y(n19));
  OR2X1  g12(.A(n19), .B(n17), .Y(n20));
  OR2X1  g13(.A(n20), .B(n10), .Y(n21));
  INVX1  g14(.A(b), .Y(n22));
  OR2X1  g15(.A(n10), .B(n22), .Y(n23));
  OR2X1  g16(.A(n23), .B(n21), .Y(y));
  OR2X1  g17(.A(b), .B(a), .Y(n28));
  OR2X1  g18(.A(n28), .B(c), .Y(n29));
  OR2X1  g19(.A(n29), .B(e), .Y(n30));
  INVX1  g20(.A(n30), .Y(n31));
  INVX1  g21(.A(n13), .Y(n32));
  OR2X1  g22(.A(n32), .B(n18), .Y(n33));
  OR2X1  g23(.A(n33), .B(n17), .Y(n34));
  INVX1  g24(.A(n34), .Y(n35));
  AND2X1 g25(.A(n35), .B(n31), .Y(n39));
  AND2X1 g26(.A(c), .B(n22), .Y(n40));
  AND2X1 g27(.A(n18), .B(b), .Y(n41));
  OR2X1  g28(.A(n41), .B(n40), .Y(n42));
  OR2X1  g29(.A(n42), .B(n17), .Y(n43));
  OR2X1  g30(.A(n18), .B(b), .Y(n44));
  OR2X1  g31(.A(c), .B(n22), .Y(n45));
  AND2X1 g32(.A(n45), .B(n44), .Y(n46));
  OR2X1  g33(.A(n46), .B(d), .Y(n47));
  AND2X1 g34(.A(n47), .B(n43), .Y(n48));
  AND2X1 g35(.A(n48), .B(e), .Y(n49));
  AND2X1 g36(.A(n46), .B(d), .Y(n50));
  AND2X1 g37(.A(n42), .B(n17), .Y(n51));
  OR2X1  g38(.A(n51), .B(n50), .Y(n52));
  AND2X1 g39(.A(n52), .B(n10), .Y(n53));
  OR2X1  g40(.A(n53), .B(n49), .Y(n54));
  OR2X1  g41(.A(n54), .B(x), .Y(n55));
  OR2X1  g42(.A(n55), .B(y), .Y(n56));
  INVX1  g43(.A(n56), .Y(n57));
  AND2X1 g44(.A(n57), .B(n39), .Y(n58));
  OR2X1  g45(.A(n56), .B(n58), .Y(z));
endmodule


