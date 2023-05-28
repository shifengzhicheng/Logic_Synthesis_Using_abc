// Benchmark "case8" written by ABC on Fri May 12 15:15:45 2023

module case8 ( 
    a, b, c, d, e, f, g, h, i, j,
    y1, y2, y3, y4, y5  );
  input  a, b, c, d, e, f, g, h, i, j;
  output y1, y2, y3, y4, y5;
  wire new_n16_, new_n17_, new_n18_, new_n19_, new_n20_, new_n21_, new_n22_,
    new_n23_, new_n24_, new_n25_, new_n26_, new_n27_, new_n28_, new_n29_,
    new_n30_, new_n31_, new_n32_, new_n33_, new_n34_, new_n35_, new_n36_,
    new_n37_, new_n38_, new_n39_, new_n40_, new_n41_, new_n42_, new_n43_,
    new_n44_, new_n45_, new_n46_, new_n47_, new_n48_, new_n49_, new_n50_,
    new_n51_, new_n52_, new_n53_, new_n54_, new_n55_, new_n56_, new_n57_,
    new_n58_, new_n59_, new_n60_, new_n61_, new_n62_, new_n63_, new_n64_,
    new_n65_, new_n66_, new_n67_, new_n68_, new_n69_, new_n70_, new_n71_,
    new_n73_, new_n74_, new_n75_, new_n76_, new_n77_, new_n78_, new_n79_,
    new_n80_, new_n81_, new_n82_, new_n83_, new_n84_, new_n85_, new_n86_,
    new_n87_, new_n88_, new_n89_, new_n90_, new_n91_, new_n92_, new_n93_,
    new_n94_, new_n95_, new_n96_, new_n99_, new_n100_, new_n101_,
    new_n102_, new_n103_, new_n104_, new_n105_, new_n106_, new_n108_;
  OR2X1  g00(.A(b), .B(a), .Y(new_n16_));
  INVX1  g01(.A(new_n16_), .Y(new_n17_));
  INVX1  g02(.A(c), .Y(new_n18_));
  INVX1  g03(.A(d), .Y(new_n19_));
  OR2X1  g04(.A(new_n19_), .B(new_n18_), .Y(new_n20_));
  OR2X1  g05(.A(new_n20_), .B(new_n17_), .Y(new_n21_));
  AND2X1 g06(.A(j), .B(i), .Y(new_n22_));
  OR2X1  g07(.A(new_n22_), .B(new_n21_), .Y(new_n23_));
  INVX1  g08(.A(new_n23_), .Y(new_n24_));
  AND2X1 g09(.A(new_n22_), .B(new_n21_), .Y(new_n25_));
  OR2X1  g10(.A(new_n25_), .B(new_n24_), .Y(new_n26_));
  INVX1  g11(.A(e), .Y(new_n27_));
  AND2X1 g12(.A(f), .B(new_n27_), .Y(new_n28_));
  INVX1  g13(.A(f), .Y(new_n29_));
  AND2X1 g14(.A(new_n29_), .B(e), .Y(new_n30_));
  OR2X1  g15(.A(new_n30_), .B(new_n28_), .Y(new_n31_));
  OR2X1  g16(.A(h), .B(g), .Y(new_n32_));
  OR2X1  g17(.A(new_n32_), .B(new_n31_), .Y(new_n33_));
  AND2X1 g18(.A(d), .B(c), .Y(new_n34_));
  AND2X1 g19(.A(new_n34_), .B(new_n16_), .Y(new_n35_));
  OR2X1  g20(.A(new_n35_), .B(new_n33_), .Y(new_n36_));
  INVX1  g21(.A(new_n33_), .Y(new_n37_));
  INVX1  g22(.A(new_n22_), .Y(new_n38_));
  OR2X1  g23(.A(new_n38_), .B(new_n35_), .Y(new_n39_));
  AND2X1 g24(.A(new_n39_), .B(new_n23_), .Y(new_n40_));
  OR2X1  g25(.A(new_n40_), .B(new_n37_), .Y(new_n41_));
  AND2X1 g26(.A(new_n36_), .B(new_n26_), .Y(new_n42_));
  OR2X1  g27(.A(new_n42_), .B(new_n41_), .Y(new_n43_));
  AND2X1 g28(.A(new_n26_), .B(new_n33_), .Y(new_n44_));
  INVX1  g29(.A(new_n36_), .Y(new_n45_));
  OR2X1  g30(.A(new_n45_), .B(new_n40_), .Y(new_n46_));
  OR2X1  g31(.A(new_n46_), .B(new_n44_), .Y(new_n47_));
  AND2X1 g32(.A(new_n47_), .B(new_n43_), .Y(new_n48_));
  OR2X1  g33(.A(new_n44_), .B(new_n21_), .Y(new_n49_));
  OR2X1  g34(.A(new_n41_), .B(new_n35_), .Y(new_n50_));
  AND2X1 g35(.A(new_n50_), .B(new_n49_), .Y(new_n51_));
  AND2X1 g36(.A(new_n48_), .B(new_n51_), .Y(new_n52_));
  AND2X1 g37(.A(new_n36_), .B(new_n26_), .Y(new_n53_));
  INVX1  g38(.A(new_n53_), .Y(new_n54_));
  AND2X1 g39(.A(new_n41_), .B(new_n35_), .Y(new_n55_));
  AND2X1 g40(.A(new_n44_), .B(new_n21_), .Y(new_n56_));
  OR2X1  g41(.A(new_n56_), .B(new_n55_), .Y(new_n57_));
  AND2X1 g42(.A(new_n46_), .B(new_n44_), .Y(new_n58_));
  AND2X1 g43(.A(new_n42_), .B(new_n41_), .Y(new_n59_));
  OR2X1  g44(.A(new_n59_), .B(new_n58_), .Y(new_n60_));
  OR2X1  g45(.A(new_n60_), .B(new_n57_), .Y(new_n61_));
  AND2X1 g46(.A(new_n61_), .B(new_n36_), .Y(new_n62_));
  OR2X1  g47(.A(new_n62_), .B(new_n46_), .Y(new_n63_));
  OR2X1  g48(.A(new_n52_), .B(new_n45_), .Y(new_n64_));
  OR2X1  g49(.A(new_n64_), .B(new_n42_), .Y(new_n65_));
  AND2X1 g50(.A(new_n65_), .B(new_n63_), .Y(new_n66_));
  AND2X1 g51(.A(new_n66_), .B(new_n48_), .Y(new_n67_));
  AND2X1 g52(.A(new_n61_), .B(new_n36_), .Y(new_n68_));
  AND2X1 g53(.A(new_n68_), .B(new_n54_), .Y(new_n69_));
  INVX1  g54(.A(new_n68_), .Y(new_n70_));
  AND2X1 g55(.A(new_n70_), .B(new_n53_), .Y(new_n71_));
  OR2X1  g56(.A(new_n71_), .B(new_n69_), .Y(y1));
  AND2X1 g57(.A(new_n64_), .B(new_n42_), .Y(new_n73_));
  AND2X1 g58(.A(new_n62_), .B(new_n46_), .Y(new_n74_));
  OR2X1  g59(.A(new_n74_), .B(new_n73_), .Y(new_n75_));
  OR2X1  g60(.A(new_n75_), .B(new_n60_), .Y(new_n76_));
  OR2X1  g61(.A(new_n67_), .B(new_n52_), .Y(new_n77_));
  AND2X1 g62(.A(new_n77_), .B(new_n62_), .Y(new_n78_));
  AND2X1 g63(.A(new_n76_), .B(new_n61_), .Y(new_n79_));
  AND2X1 g64(.A(new_n79_), .B(new_n64_), .Y(new_n80_));
  OR2X1  g65(.A(new_n80_), .B(new_n78_), .Y(new_n81_));
  OR2X1  g66(.A(new_n81_), .B(new_n75_), .Y(new_n82_));
  AND2X1 g67(.A(new_n82_), .B(new_n76_), .Y(new_n83_));
  AND2X1 g68(.A(new_n26_), .B(new_n33_), .Y(new_n84_));
  INVX1  g69(.A(new_n84_), .Y(new_n85_));
  AND2X1 g70(.A(new_n85_), .B(new_n83_), .Y(new_n86_));
  OR2X1  g71(.A(new_n79_), .B(new_n64_), .Y(new_n87_));
  OR2X1  g72(.A(new_n77_), .B(new_n62_), .Y(new_n88_));
  AND2X1 g73(.A(new_n88_), .B(new_n87_), .Y(new_n89_));
  AND2X1 g74(.A(new_n89_), .B(new_n66_), .Y(new_n90_));
  OR2X1  g75(.A(new_n90_), .B(new_n67_), .Y(new_n91_));
  AND2X1 g76(.A(new_n84_), .B(new_n91_), .Y(new_n92_));
  OR2X1  g77(.A(new_n92_), .B(new_n86_), .Y(new_n93_));
  AND2X1 g78(.A(new_n54_), .B(new_n84_), .Y(new_n94_));
  AND2X1 g79(.A(new_n53_), .B(new_n85_), .Y(new_n95_));
  OR2X1  g80(.A(new_n95_), .B(new_n94_), .Y(new_n96_));
  OR2X1  g81(.A(new_n96_), .B(new_n93_), .Y(y2));
  AND2X1 g82(.A(new_n68_), .B(new_n53_), .Y(y3));
  AND2X1 g83(.A(new_n91_), .B(new_n79_), .Y(new_n99_));
  AND2X1 g84(.A(new_n83_), .B(new_n77_), .Y(new_n100_));
  OR2X1  g85(.A(new_n100_), .B(new_n99_), .Y(new_n101_));
  OR2X1  g86(.A(new_n93_), .B(new_n101_), .Y(new_n102_));
  INVX1  g87(.A(new_n96_), .Y(new_n103_));
  AND2X1 g88(.A(new_n103_), .B(new_n102_), .Y(new_n104_));
  OR2X1  g89(.A(new_n103_), .B(new_n102_), .Y(new_n105_));
  INVX1  g90(.A(new_n105_), .Y(new_n106_));
  OR2X1  g91(.A(new_n106_), .B(new_n104_), .Y(y4));
  OR2X1  g92(.A(new_n96_), .B(new_n93_), .Y(new_n108_));
  OR2X1  g93(.A(new_n108_), .B(new_n53_), .Y(y5));
endmodule


