// Benchmark "case9" written by ABC on Fri May 12 15:16:02 2023

module case9 ( 
    a, b, c, d, e, f, g, h, i, j,
    y1, y2, y3, y4, y5  );
  input  a, b, c, d, e, f, g, h, i, j;
  output y1, y2, y3, y4, y5;
  wire new_n16_, new_n17_, new_n18_, new_n19_, new_n20_, new_n21_, new_n22_,
    new_n23_, new_n24_, new_n25_, new_n26_, new_n27_, new_n28_, new_n29_,
    new_n31_, new_n33_, new_n34_, new_n35_, new_n36_, new_n37_, new_n38_,
    new_n39_, new_n40_, new_n42_, new_n43_, new_n44_, new_n45_, new_n46_,
    new_n47_, new_n48_, new_n49_, new_n50_, new_n51_, new_n52_, new_n53_,
    new_n54_, new_n55_, new_n56_, new_n57_, new_n58_, new_n59_, new_n60_,
    new_n61_, new_n62_, new_n63_, new_n64_, new_n65_, new_n66_, new_n68_,
    new_n69_, new_n70_, new_n71_, new_n72_, new_n73_, new_n74_, new_n75_,
    new_n76_, new_n77_, new_n78_, new_n79_, new_n80_, new_n82_, new_n83_,
    new_n84_, new_n85_, new_n86_, new_n87_, new_n88_, new_n89_, new_n90_,
    new_n91_, new_n92_, new_n93_, new_n94_;
  INVX1  g00(.A(e), .Y(new_n16_));
  AND2X1 g01(.A(f), .B(new_n16_), .Y(new_n17_));
  INVX1  g02(.A(f), .Y(new_n18_));
  AND2X1 g03(.A(new_n18_), .B(e), .Y(new_n19_));
  OR2X1  g04(.A(new_n19_), .B(new_n17_), .Y(new_n20_));
  AND2X1 g05(.A(h), .B(g), .Y(new_n21_));
  AND2X1 g06(.A(new_n21_), .B(new_n20_), .Y(new_n22_));
  INVX1  g07(.A(new_n22_), .Y(new_n23_));
  AND2X1 g08(.A(b), .B(a), .Y(new_n24_));
  OR2X1  g09(.A(d), .B(c), .Y(new_n25_));
  INVX1  g10(.A(new_n25_), .Y(new_n26_));
  OR2X1  g11(.A(new_n26_), .B(new_n24_), .Y(new_n27_));
  INVX1  g12(.A(new_n27_), .Y(new_n28_));
  OR2X1  g13(.A(j), .B(i), .Y(new_n29_));
  OR2X1  g14(.A(new_n28_), .B(new_n23_), .Y(new_n31_));
  INVX1  g15(.A(new_n31_), .Y(y1));
  AND2X1 g16(.A(new_n29_), .B(new_n27_), .Y(new_n33_));
  OR2X1  g17(.A(new_n29_), .B(new_n27_), .Y(new_n34_));
  INVX1  g18(.A(new_n34_), .Y(new_n35_));
  OR2X1  g19(.A(new_n35_), .B(new_n33_), .Y(new_n36_));
  OR2X1  g20(.A(new_n36_), .B(new_n22_), .Y(new_n37_));
  INVX1  g21(.A(new_n37_), .Y(new_n38_));
  OR2X1  g22(.A(new_n38_), .B(new_n28_), .Y(new_n39_));
  INVX1  g23(.A(new_n39_), .Y(new_n40_));
  OR2X1  g24(.A(new_n36_), .B(new_n22_), .Y(y2));
  OR2X1  g25(.A(new_n27_), .B(new_n23_), .Y(new_n42_));
  INVX1  g26(.A(new_n42_), .Y(new_n43_));
  OR2X1  g27(.A(new_n39_), .B(new_n22_), .Y(new_n44_));
  INVX1  g28(.A(new_n44_), .Y(new_n45_));
  OR2X1  g29(.A(new_n45_), .B(new_n43_), .Y(new_n46_));
  OR2X1  g30(.A(new_n46_), .B(new_n36_), .Y(new_n47_));
  INVX1  g31(.A(new_n36_), .Y(new_n48_));
  AND2X1 g32(.A(new_n44_), .B(new_n42_), .Y(new_n49_));
  AND2X1 g33(.A(new_n49_), .B(new_n48_), .Y(new_n50_));
  OR2X1  g34(.A(new_n50_), .B(new_n38_), .Y(new_n51_));
  AND2X1 g35(.A(new_n51_), .B(new_n40_), .Y(new_n52_));
  AND2X1 g36(.A(new_n47_), .B(new_n37_), .Y(new_n53_));
  AND2X1 g37(.A(new_n53_), .B(new_n39_), .Y(new_n54_));
  OR2X1  g38(.A(new_n54_), .B(new_n52_), .Y(new_n55_));
  OR2X1  g39(.A(new_n55_), .B(new_n46_), .Y(new_n56_));
  AND2X1 g40(.A(new_n56_), .B(new_n47_), .Y(new_n57_));
  OR2X1  g41(.A(new_n57_), .B(new_n51_), .Y(new_n58_));
  OR2X1  g42(.A(new_n53_), .B(new_n39_), .Y(new_n59_));
  OR2X1  g43(.A(new_n51_), .B(new_n40_), .Y(new_n60_));
  AND2X1 g44(.A(new_n60_), .B(new_n59_), .Y(new_n61_));
  AND2X1 g45(.A(new_n61_), .B(new_n49_), .Y(new_n62_));
  OR2X1  g46(.A(new_n62_), .B(new_n50_), .Y(new_n63_));
  OR2X1  g47(.A(new_n63_), .B(new_n53_), .Y(new_n64_));
  AND2X1 g48(.A(new_n64_), .B(new_n58_), .Y(new_n65_));
  AND2X1 g49(.A(new_n65_), .B(new_n61_), .Y(new_n66_));
  AND2X1 g50(.A(new_n56_), .B(new_n47_), .Y(y3));
  OR2X1  g51(.A(new_n28_), .B(new_n23_), .Y(new_n68_));
  INVX1  g52(.A(new_n68_), .Y(new_n69_));
  AND2X1 g53(.A(new_n37_), .B(new_n27_), .Y(new_n70_));
  INVX1  g54(.A(new_n70_), .Y(new_n71_));
  AND2X1 g55(.A(new_n71_), .B(new_n69_), .Y(new_n72_));
  OR2X1  g56(.A(new_n71_), .B(new_n69_), .Y(new_n73_));
  INVX1  g57(.A(new_n73_), .Y(new_n74_));
  OR2X1  g58(.A(new_n74_), .B(new_n72_), .Y(new_n75_));
  AND2X1 g59(.A(new_n47_), .B(new_n37_), .Y(new_n76_));
  INVX1  g60(.A(new_n76_), .Y(new_n77_));
  AND2X1 g61(.A(new_n77_), .B(new_n75_), .Y(new_n78_));
  INVX1  g62(.A(new_n75_), .Y(new_n79_));
  AND2X1 g63(.A(new_n76_), .B(new_n79_), .Y(new_n80_));
  OR2X1  g64(.A(new_n80_), .B(new_n78_), .Y(y4));
  AND2X1 g65(.A(new_n63_), .B(new_n53_), .Y(new_n82_));
  AND2X1 g66(.A(new_n57_), .B(new_n51_), .Y(new_n83_));
  OR2X1  g67(.A(new_n83_), .B(new_n82_), .Y(new_n84_));
  OR2X1  g68(.A(new_n84_), .B(new_n55_), .Y(new_n85_));
  AND2X1 g69(.A(new_n85_), .B(new_n56_), .Y(new_n86_));
  AND2X1 g70(.A(new_n68_), .B(new_n86_), .Y(new_n87_));
  OR2X1  g71(.A(new_n66_), .B(new_n62_), .Y(new_n88_));
  AND2X1 g72(.A(new_n69_), .B(new_n88_), .Y(new_n89_));
  OR2X1  g73(.A(new_n89_), .B(new_n87_), .Y(new_n90_));
  OR2X1  g74(.A(new_n75_), .B(new_n90_), .Y(new_n91_));
  AND2X1 g75(.A(new_n77_), .B(new_n70_), .Y(new_n92_));
  AND2X1 g76(.A(new_n76_), .B(new_n71_), .Y(new_n93_));
  OR2X1  g77(.A(new_n93_), .B(new_n92_), .Y(new_n94_));
  OR2X1  g78(.A(new_n94_), .B(new_n91_), .Y(y5));
endmodule


