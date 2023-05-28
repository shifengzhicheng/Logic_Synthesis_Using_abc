// Benchmark "case3" written by ABC on Fri May 12 15:13:26 2023

module case3 ( 
    a, b, c, d, e, f, g,
    x, y, z  );
  input  a, b, c, d, e, f, g;
  output x, y, z;
  wire new_n11_, new_n12_, new_n13_, new_n14_, new_n15_, new_n16_, new_n17_,
    new_n18_, new_n19_, new_n20_, new_n21_, new_n22_, new_n23_, new_n25_,
    new_n26_, new_n27_, new_n28_, new_n29_, new_n30_, new_n31_, new_n32_,
    new_n33_, new_n34_, new_n35_, new_n36_, new_n37_, new_n38_, new_n39_,
    new_n40_, new_n41_, new_n42_, new_n43_, new_n44_, new_n45_, new_n46_,
    new_n47_, new_n48_, new_n49_, new_n50_, new_n52_, new_n53_, new_n54_,
    new_n55_, new_n56_, new_n57_, new_n58_, new_n59_, new_n60_, new_n61_,
    new_n62_, new_n63_, new_n64_, new_n65_, new_n66_, new_n67_, new_n68_;
  INVX1  g00(.A(d), .Y(new_n11_));
  INVX1  g01(.A(c), .Y(new_n12_));
  INVX1  g02(.A(a), .Y(new_n13_));
  INVX1  g03(.A(b), .Y(new_n14_));
  OR2X1  g04(.A(new_n14_), .B(new_n13_), .Y(new_n15_));
  OR2X1  g05(.A(new_n15_), .B(new_n12_), .Y(new_n16_));
  OR2X1  g06(.A(new_n16_), .B(new_n11_), .Y(new_n17_));
  INVX1  g07(.A(new_n17_), .Y(new_n18_));
  INVX1  g08(.A(e), .Y(new_n19_));
  OR2X1  g09(.A(new_n12_), .B(new_n13_), .Y(new_n20_));
  OR2X1  g10(.A(new_n20_), .B(new_n19_), .Y(new_n21_));
  OR2X1  g11(.A(new_n21_), .B(new_n15_), .Y(new_n22_));
  INVX1  g12(.A(new_n22_), .Y(new_n23_));
  AND2X1 g13(.A(new_n23_), .B(new_n18_), .Y(x));
  INVX1  g14(.A(f), .Y(new_n25_));
  AND2X1 g15(.A(e), .B(new_n11_), .Y(new_n26_));
  AND2X1 g16(.A(new_n19_), .B(d), .Y(new_n27_));
  OR2X1  g17(.A(new_n27_), .B(new_n26_), .Y(new_n28_));
  OR2X1  g18(.A(new_n28_), .B(new_n25_), .Y(new_n29_));
  OR2X1  g19(.A(new_n19_), .B(d), .Y(new_n30_));
  OR2X1  g20(.A(e), .B(new_n11_), .Y(new_n31_));
  AND2X1 g21(.A(new_n31_), .B(new_n30_), .Y(new_n32_));
  OR2X1  g22(.A(new_n32_), .B(f), .Y(new_n33_));
  AND2X1 g23(.A(new_n33_), .B(new_n29_), .Y(new_n34_));
  AND2X1 g24(.A(new_n34_), .B(g), .Y(new_n35_));
  INVX1  g25(.A(g), .Y(new_n36_));
  AND2X1 g26(.A(new_n32_), .B(f), .Y(new_n37_));
  AND2X1 g27(.A(new_n28_), .B(new_n25_), .Y(new_n38_));
  OR2X1  g28(.A(new_n38_), .B(new_n37_), .Y(new_n39_));
  AND2X1 g29(.A(new_n39_), .B(new_n36_), .Y(new_n40_));
  OR2X1  g30(.A(new_n40_), .B(new_n35_), .Y(new_n41_));
  OR2X1  g31(.A(c), .B(b), .Y(new_n42_));
  AND2X1 g32(.A(d), .B(new_n14_), .Y(new_n43_));
  AND2X1 g33(.A(new_n11_), .B(b), .Y(new_n44_));
  OR2X1  g34(.A(new_n44_), .B(new_n43_), .Y(new_n45_));
  INVX1  g35(.A(new_n45_), .Y(new_n46_));
  AND2X1 g36(.A(new_n46_), .B(f), .Y(new_n47_));
  AND2X1 g37(.A(new_n45_), .B(new_n25_), .Y(new_n48_));
  OR2X1  g38(.A(new_n48_), .B(new_n47_), .Y(new_n49_));
  OR2X1  g39(.A(new_n49_), .B(new_n42_), .Y(new_n50_));
  OR2X1  g40(.A(new_n50_), .B(new_n41_), .Y(y));
  OR2X1  g41(.A(new_n36_), .B(new_n19_), .Y(new_n52_));
  OR2X1  g42(.A(new_n52_), .B(new_n13_), .Y(new_n53_));
  OR2X1  g43(.A(new_n53_), .B(new_n14_), .Y(new_n54_));
  OR2X1  g44(.A(new_n11_), .B(c), .Y(new_n55_));
  OR2X1  g45(.A(d), .B(new_n12_), .Y(new_n56_));
  AND2X1 g46(.A(new_n56_), .B(new_n55_), .Y(new_n57_));
  INVX1  g47(.A(new_n57_), .Y(new_n58_));
  AND2X1 g48(.A(e), .B(c), .Y(new_n59_));
  AND2X1 g49(.A(new_n59_), .B(g), .Y(new_n60_));
  OR2X1  g50(.A(new_n60_), .B(new_n58_), .Y(new_n61_));
  INVX1  g51(.A(new_n60_), .Y(new_n62_));
  OR2X1  g52(.A(new_n62_), .B(new_n57_), .Y(new_n63_));
  AND2X1 g53(.A(new_n63_), .B(new_n61_), .Y(new_n64_));
  AND2X1 g54(.A(new_n64_), .B(new_n54_), .Y(new_n65_));
  INVX1  g55(.A(new_n54_), .Y(new_n66_));
  INVX1  g56(.A(new_n64_), .Y(new_n67_));
  AND2X1 g57(.A(new_n67_), .B(new_n66_), .Y(new_n68_));
  OR2X1  g58(.A(new_n68_), .B(new_n65_), .Y(z));
endmodule


