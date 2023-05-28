// Benchmark "case5" written by ABC on Fri May 12 15:14:29 2023

module case5 ( 
    a, b, c, d, e, f,
    x, y, z  );
  input  a, b, c, d, e, f;
  output x, y, z;
  wire new_n10_, new_n11_, new_n12_, new_n13_, new_n14_, new_n15_, new_n16_,
    new_n17_, new_n18_, new_n19_, new_n20_, new_n21_, new_n22_, new_n23_,
    new_n24_, new_n25_, new_n26_, new_n27_, new_n28_, new_n29_, new_n30_,
    new_n31_, new_n32_, new_n33_, new_n34_, new_n35_, new_n36_, new_n37_,
    new_n38_, new_n39_, new_n40_, new_n41_, new_n42_, new_n43_, new_n44_,
    new_n45_, new_n46_, new_n47_, new_n48_, new_n49_, new_n50_, new_n51_,
    new_n52_, new_n55_, new_n56_;
  INVX1  g00(.A(d), .Y(new_n10_));
  INVX1  g01(.A(b), .Y(new_n11_));
  INVX1  g02(.A(e), .Y(new_n12_));
  INVX1  g03(.A(c), .Y(new_n13_));
  INVX1  g04(.A(a), .Y(new_n14_));
  AND2X1 g05(.A(b), .B(a), .Y(new_n15_));
  AND2X1 g06(.A(new_n15_), .B(c), .Y(new_n16_));
  OR2X1  g07(.A(new_n16_), .B(new_n10_), .Y(new_n17_));
  OR2X1  g08(.A(new_n17_), .B(new_n12_), .Y(new_n18_));
  AND2X1 g09(.A(new_n18_), .B(f), .Y(new_n19_));
  AND2X1 g10(.A(new_n19_), .B(a), .Y(new_n20_));
  OR2X1  g11(.A(new_n20_), .B(new_n11_), .Y(new_n21_));
  OR2X1  g12(.A(new_n21_), .B(new_n13_), .Y(new_n22_));
  AND2X1 g13(.A(new_n22_), .B(d), .Y(new_n23_));
  AND2X1 g14(.A(new_n23_), .B(e), .Y(new_n24_));
  OR2X1  g15(.A(new_n24_), .B(new_n14_), .Y(new_n25_));
  OR2X1  g16(.A(new_n25_), .B(new_n11_), .Y(new_n26_));
  AND2X1 g17(.A(new_n26_), .B(c), .Y(new_n27_));
  AND2X1 g18(.A(new_n27_), .B(d), .Y(new_n28_));
  OR2X1  g19(.A(new_n28_), .B(new_n12_), .Y(new_n29_));
  OR2X1  g20(.A(new_n29_), .B(new_n14_), .Y(new_n30_));
  AND2X1 g21(.A(new_n30_), .B(b), .Y(new_n31_));
  AND2X1 g22(.A(new_n31_), .B(c), .Y(new_n32_));
  OR2X1  g23(.A(new_n32_), .B(new_n10_), .Y(new_n33_));
  OR2X1  g24(.A(new_n33_), .B(new_n12_), .Y(new_n34_));
  AND2X1 g25(.A(new_n34_), .B(a), .Y(new_n35_));
  AND2X1 g26(.A(new_n35_), .B(b), .Y(new_n36_));
  OR2X1  g27(.A(new_n36_), .B(new_n13_), .Y(new_n37_));
  OR2X1  g28(.A(new_n37_), .B(new_n10_), .Y(new_n38_));
  AND2X1 g29(.A(new_n38_), .B(e), .Y(new_n39_));
  AND2X1 g30(.A(new_n39_), .B(a), .Y(new_n40_));
  OR2X1  g31(.A(new_n40_), .B(new_n11_), .Y(new_n41_));
  OR2X1  g32(.A(new_n41_), .B(new_n13_), .Y(new_n42_));
  AND2X1 g33(.A(new_n42_), .B(d), .Y(new_n43_));
  INVX1  g34(.A(new_n43_), .Y(new_n44_));
  OR2X1  g35(.A(new_n44_), .B(new_n12_), .Y(new_n45_));
  AND2X1 g36(.A(new_n45_), .B(f), .Y(new_n46_));
  AND2X1 g37(.A(new_n46_), .B(a), .Y(new_n47_));
  OR2X1  g38(.A(new_n47_), .B(new_n11_), .Y(new_n48_));
  INVX1  g39(.A(new_n48_), .Y(new_n49_));
  AND2X1 g40(.A(new_n49_), .B(c), .Y(new_n50_));
  OR2X1  g41(.A(new_n50_), .B(new_n10_), .Y(new_n51_));
  INVX1  g42(.A(new_n51_), .Y(new_n52_));
  OR2X1  g43(.A(new_n52_), .B(a), .Y(x));
  AND2X1 g44(.A(new_n52_), .B(b), .Y(y));
  AND2X1 g45(.A(new_n51_), .B(c), .Y(new_n55_));
  AND2X1 g46(.A(d), .B(new_n13_), .Y(new_n56_));
  OR2X1  g47(.A(new_n56_), .B(new_n55_), .Y(z));
endmodule


