// Benchmark "case7" written by ABC on Fri May 12 15:15:09 2023

module case7 ( 
    a, b, c, d, e, f,
    y1, y2, y3  );
  input  a, b, c, d, e, f;
  output y1, y2, y3;
  wire new_n10_, new_n11_, new_n12_, new_n13_, new_n14_, new_n15_, new_n16_,
    new_n17_, new_n18_, new_n19_, new_n20_, new_n21_, new_n22_, new_n23_,
    new_n24_, new_n25_, new_n26_, new_n27_, new_n28_, new_n30_, new_n31_,
    new_n32_, new_n33_, new_n34_, new_n35_, new_n36_, new_n37_, new_n38_,
    new_n39_, new_n40_, new_n41_, new_n42_, new_n43_, new_n44_, new_n45_,
    new_n46_, new_n47_, new_n48_, new_n50_, new_n51_, new_n52_, new_n54_,
    new_n55_, new_n56_;
  INVX1  g00(.A(c), .Y(new_n10_));
  INVX1  g01(.A(d), .Y(new_n11_));
  OR2X1  g02(.A(new_n11_), .B(new_n10_), .Y(new_n12_));
  INVX1  g03(.A(new_n12_), .Y(new_n13_));
  OR2X1  g04(.A(b), .B(a), .Y(new_n14_));
  INVX1  g05(.A(new_n14_), .Y(new_n15_));
  OR2X1  g06(.A(new_n15_), .B(f), .Y(new_n16_));
  INVX1  g07(.A(f), .Y(new_n17_));
  OR2X1  g08(.A(new_n14_), .B(new_n17_), .Y(new_n18_));
  AND2X1 g09(.A(new_n18_), .B(new_n16_), .Y(new_n19_));
  AND2X1 g10(.A(new_n12_), .B(e), .Y(new_n20_));
  OR2X1  g11(.A(new_n20_), .B(new_n19_), .Y(new_n21_));
  AND2X1 g12(.A(new_n21_), .B(new_n14_), .Y(new_n22_));
  OR2X1  g13(.A(new_n21_), .B(new_n14_), .Y(new_n23_));
  INVX1  g14(.A(new_n23_), .Y(new_n24_));
  OR2X1  g15(.A(new_n24_), .B(new_n22_), .Y(new_n25_));
  OR2X1  g16(.A(new_n25_), .B(new_n13_), .Y(new_n26_));
  INVX1  g17(.A(new_n26_), .Y(new_n27_));
  OR2X1  g18(.A(b), .B(a), .Y(new_n28_));
  OR2X1  g19(.A(new_n27_), .B(e), .Y(new_n30_));
  OR2X1  g20(.A(new_n28_), .B(new_n26_), .Y(new_n31_));
  INVX1  g21(.A(new_n19_), .Y(new_n32_));
  OR2X1  g22(.A(new_n27_), .B(e), .Y(new_n33_));
  AND2X1 g23(.A(new_n33_), .B(new_n32_), .Y(new_n34_));
  OR2X1  g24(.A(new_n33_), .B(new_n32_), .Y(new_n35_));
  INVX1  g25(.A(new_n35_), .Y(new_n36_));
  OR2X1  g26(.A(new_n36_), .B(new_n34_), .Y(new_n37_));
  INVX1  g27(.A(new_n37_), .Y(new_n38_));
  INVX1  g28(.A(new_n30_), .Y(new_n39_));
  OR2X1  g29(.A(new_n20_), .B(new_n19_), .Y(new_n40_));
  AND2X1 g30(.A(new_n40_), .B(new_n28_), .Y(new_n41_));
  OR2X1  g31(.A(new_n40_), .B(new_n28_), .Y(new_n42_));
  INVX1  g32(.A(new_n42_), .Y(new_n43_));
  OR2X1  g33(.A(new_n43_), .B(new_n41_), .Y(new_n44_));
  OR2X1  g34(.A(new_n44_), .B(new_n31_), .Y(new_n45_));
  AND2X1 g35(.A(new_n45_), .B(new_n30_), .Y(new_n46_));
  OR2X1  g36(.A(new_n45_), .B(new_n30_), .Y(new_n47_));
  INVX1  g37(.A(new_n47_), .Y(new_n48_));
  OR2X1  g38(.A(new_n48_), .B(new_n46_), .Y(y1));
  AND2X1 g39(.A(new_n30_), .B(new_n37_), .Y(new_n50_));
  AND2X1 g40(.A(new_n39_), .B(new_n38_), .Y(new_n51_));
  OR2X1  g41(.A(new_n51_), .B(new_n50_), .Y(new_n52_));
  OR2X1  g42(.A(new_n44_), .B(new_n52_), .Y(y2));
  INVX1  g43(.A(new_n20_), .Y(new_n54_));
  OR2X1  g44(.A(new_n37_), .B(new_n54_), .Y(new_n55_));
  OR2X1  g45(.A(new_n52_), .B(new_n55_), .Y(new_n56_));
  AND2X1 g46(.A(new_n45_), .B(new_n56_), .Y(y3));
endmodule


