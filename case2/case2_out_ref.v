// Benchmark "case2" written by ABC on Fri May 12 15:08:34 2023

module case2 ( 
    a, b, c, d, e,
    x, y, z  );
  input  a, b, c, d, e;
  output x, y, z;
  wire new_n9_, new_n10_, new_n11_, new_n12_, new_n13_, new_n14_, new_n15_,
    new_n16_, new_n18_, new_n19_, new_n20_, new_n21_, new_n22_, new_n23_,
    new_n24_, new_n25_, new_n26_, new_n27_, new_n29_, new_n30_, new_n31_,
    new_n32_, new_n33_, new_n34_, new_n35_, new_n36_, new_n37_, new_n38_,
    new_n39_, new_n40_, new_n41_, new_n42_, new_n43_, new_n44_, new_n45_,
    new_n46_, new_n47_, new_n48_, new_n49_, new_n50_, new_n51_, new_n52_,
    new_n53_, new_n54_, new_n55_, new_n56_, new_n57_, new_n58_, new_n59_,
    new_n60_, new_n61_;
  INVX1  g00(.A(a), .Y(new_n9_));
  AND2X1 g01(.A(e), .B(new_n9_), .Y(new_n10_));
  INVX1  g02(.A(e), .Y(new_n11_));
  AND2X1 g03(.A(new_n11_), .B(a), .Y(new_n12_));
  OR2X1  g04(.A(new_n12_), .B(new_n10_), .Y(new_n13_));
  AND2X1 g05(.A(b), .B(a), .Y(new_n14_));
  OR2X1  g06(.A(d), .B(c), .Y(new_n15_));
  AND2X1 g07(.A(new_n15_), .B(new_n14_), .Y(new_n16_));
  AND2X1 g08(.A(new_n16_), .B(new_n13_), .Y(x));
  INVX1  g09(.A(d), .Y(new_n18_));
  INVX1  g10(.A(c), .Y(new_n19_));
  OR2X1  g11(.A(new_n19_), .B(new_n9_), .Y(new_n20_));
  OR2X1  g12(.A(new_n20_), .B(new_n18_), .Y(new_n21_));
  OR2X1  g13(.A(new_n21_), .B(new_n11_), .Y(new_n22_));
  INVX1  g14(.A(b), .Y(new_n23_));
  OR2X1  g15(.A(new_n11_), .B(new_n23_), .Y(new_n24_));
  OR2X1  g16(.A(e), .B(d), .Y(new_n25_));
  INVX1  g17(.A(new_n25_), .Y(new_n26_));
  OR2X1  g18(.A(new_n26_), .B(new_n24_), .Y(new_n27_));
  OR2X1  g19(.A(new_n27_), .B(new_n22_), .Y(y));
  OR2X1  g20(.A(b), .B(a), .Y(new_n29_));
  OR2X1  g21(.A(new_n29_), .B(c), .Y(new_n30_));
  OR2X1  g22(.A(new_n30_), .B(e), .Y(new_n31_));
  INVX1  g23(.A(new_n31_), .Y(new_n32_));
  INVX1  g24(.A(new_n14_), .Y(new_n33_));
  OR2X1  g25(.A(new_n33_), .B(new_n19_), .Y(new_n34_));
  OR2X1  g26(.A(new_n34_), .B(new_n18_), .Y(new_n35_));
  INVX1  g27(.A(new_n35_), .Y(new_n36_));
  OR2X1  g28(.A(new_n29_), .B(d), .Y(new_n37_));
  OR2X1  g29(.A(new_n37_), .B(e), .Y(new_n38_));
  AND2X1 g30(.A(new_n38_), .B(new_n36_), .Y(new_n39_));
  AND2X1 g31(.A(new_n39_), .B(new_n32_), .Y(new_n40_));
  AND2X1 g32(.A(c), .B(new_n23_), .Y(new_n41_));
  AND2X1 g33(.A(new_n19_), .B(b), .Y(new_n42_));
  OR2X1  g34(.A(new_n42_), .B(new_n41_), .Y(new_n43_));
  OR2X1  g35(.A(new_n43_), .B(new_n18_), .Y(new_n44_));
  OR2X1  g36(.A(new_n19_), .B(b), .Y(new_n45_));
  OR2X1  g37(.A(c), .B(new_n23_), .Y(new_n46_));
  AND2X1 g38(.A(new_n46_), .B(new_n45_), .Y(new_n47_));
  OR2X1  g39(.A(new_n47_), .B(d), .Y(new_n48_));
  AND2X1 g40(.A(new_n48_), .B(new_n44_), .Y(new_n49_));
  AND2X1 g41(.A(new_n49_), .B(e), .Y(new_n50_));
  AND2X1 g42(.A(new_n47_), .B(d), .Y(new_n51_));
  AND2X1 g43(.A(new_n43_), .B(new_n18_), .Y(new_n52_));
  OR2X1  g44(.A(new_n52_), .B(new_n51_), .Y(new_n53_));
  AND2X1 g45(.A(new_n53_), .B(new_n11_), .Y(new_n54_));
  OR2X1  g46(.A(new_n54_), .B(new_n50_), .Y(new_n55_));
  OR2X1  g47(.A(new_n55_), .B(x), .Y(new_n56_));
  OR2X1  g48(.A(new_n56_), .B(y), .Y(new_n57_));
  INVX1  g49(.A(new_n57_), .Y(new_n58_));
  AND2X1 g50(.A(new_n58_), .B(new_n40_), .Y(new_n59_));
  INVX1  g51(.A(new_n40_), .Y(new_n60_));
  AND2X1 g52(.A(new_n57_), .B(new_n60_), .Y(new_n61_));
  OR2X1  g53(.A(new_n61_), .B(new_n59_), .Y(z));
endmodule


