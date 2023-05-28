// Benchmark "case10" written by ABC on Fri May 12 15:16:17 2023

module case10 ( 
    a, b, c, d,
    y1, y2  );
  input  a, b, c, d;
  output y1, y2;
  wire new_n7_, new_n8_, new_n9_, new_n10_, new_n11_, new_n12_, new_n13_,
    new_n14_, new_n15_, new_n16_, new_n17_, new_n18_, new_n19_, new_n20_,
    new_n21_, new_n22_, new_n23_, new_n24_, new_n25_, new_n26_, new_n35_,
    new_n36_, new_n37_, new_n38_, new_n39_, new_n40_, new_n41_, new_n42_,
    new_n43_, new_n44_, new_n45_, new_n46_, new_n47_, new_n48_, new_n49_,
    new_n50_, new_n51_, new_n52_, new_n53_, new_n54_, new_n55_, new_n56_,
    new_n57_, new_n58_;
  OR2X1  g00(.A(b), .B(a), .Y(new_n7_));
  OR2X1  g01(.A(new_n7_), .B(c), .Y(new_n8_));
  INVX1  g02(.A(new_n8_), .Y(new_n9_));
  INVX1  g03(.A(c), .Y(new_n10_));
  INVX1  g04(.A(a), .Y(new_n11_));
  AND2X1 g05(.A(b), .B(new_n11_), .Y(new_n12_));
  INVX1  g06(.A(b), .Y(new_n13_));
  AND2X1 g07(.A(new_n13_), .B(a), .Y(new_n14_));
  OR2X1  g08(.A(new_n14_), .B(new_n12_), .Y(new_n15_));
  OR2X1  g09(.A(new_n15_), .B(new_n10_), .Y(new_n16_));
  OR2X1  g10(.A(new_n13_), .B(a), .Y(new_n17_));
  OR2X1  g11(.A(b), .B(new_n11_), .Y(new_n18_));
  AND2X1 g12(.A(new_n18_), .B(new_n17_), .Y(new_n19_));
  OR2X1  g13(.A(new_n19_), .B(c), .Y(new_n20_));
  AND2X1 g14(.A(new_n20_), .B(new_n16_), .Y(new_n21_));
  AND2X1 g15(.A(new_n21_), .B(new_n9_), .Y(new_n22_));
  INVX1  g16(.A(d), .Y(new_n23_));
  INVX1  g17(.A(new_n16_), .Y(new_n24_));
  INVX1  g18(.A(new_n20_), .Y(new_n25_));
  OR2X1  g19(.A(new_n25_), .B(new_n24_), .Y(new_n26_));
  OR2X1  g20(.A(new_n26_), .B(new_n8_), .Y(new_n35_));
  AND2X1 g21(.A(new_n35_), .B(new_n23_), .Y(new_n36_));
  OR2X1  g22(.A(new_n26_), .B(new_n8_), .Y(new_n37_));
  INVX1  g23(.A(new_n37_), .Y(new_n38_));
  OR2X1  g24(.A(new_n38_), .B(new_n35_), .Y(new_n39_));
  INVX1  g25(.A(new_n35_), .Y(new_n40_));
  OR2X1  g26(.A(new_n37_), .B(new_n40_), .Y(new_n41_));
  AND2X1 g27(.A(new_n41_), .B(new_n39_), .Y(new_n42_));
  INVX1  g28(.A(new_n42_), .Y(new_n43_));
  OR2X1  g29(.A(new_n43_), .B(new_n36_), .Y(new_n44_));
  OR2X1  g30(.A(new_n44_), .B(new_n22_), .Y(new_n45_));
  AND2X1 g31(.A(new_n44_), .B(new_n22_), .Y(new_n46_));
  INVX1  g32(.A(new_n46_), .Y(new_n47_));
  AND2X1 g33(.A(new_n47_), .B(new_n45_), .Y(new_n48_));
  INVX1  g34(.A(new_n48_), .Y(new_n49_));
  OR2X1  g35(.A(new_n43_), .B(new_n36_), .Y(new_n50_));
  AND2X1 g36(.A(new_n50_), .B(new_n49_), .Y(new_n51_));
  INVX1  g37(.A(new_n51_), .Y(new_n52_));
  AND2X1 g38(.A(new_n21_), .B(new_n9_), .Y(new_n53_));
  OR2X1  g39(.A(new_n53_), .B(new_n52_), .Y(new_n54_));
  OR2X1  g40(.A(new_n51_), .B(new_n26_), .Y(new_n55_));
  AND2X1 g41(.A(new_n55_), .B(new_n54_), .Y(new_n56_));
  OR2X1  g42(.A(new_n55_), .B(new_n54_), .Y(new_n57_));
  INVX1  g43(.A(new_n57_), .Y(new_n58_));
  OR2X1  g44(.A(new_n58_), .B(new_n56_), .Y(y1));
  OR2X1  g45(.A(new_n51_), .B(new_n26_), .Y(y2));
endmodule


