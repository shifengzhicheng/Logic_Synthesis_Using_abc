// Benchmark "case6" written by ABC on Fri May 12 15:14:50 2023

module case6 ( 
    a, b, c, d, e, f,
    y1, y2, y3  );
  input  a, b, c, d, e, f;
  output y1, y2, y3;
  wire new_n10_, new_n11_, new_n12_, new_n13_, new_n14_, new_n15_, new_n16_,
    new_n17_, new_n18_, new_n19_, new_n20_, new_n21_, new_n22_, new_n23_,
    new_n24_, new_n25_, new_n26_, new_n27_, new_n28_, new_n29_, new_n33_,
    new_n36_, new_n37_, new_n38_, new_n39_, new_n40_, new_n41_, new_n42_,
    new_n43_;
  INVX1  g00(.A(f), .Y(new_n10_));
  OR2X1  g01(.A(new_n10_), .B(e), .Y(new_n11_));
  INVX1  g02(.A(e), .Y(new_n12_));
  OR2X1  g03(.A(f), .B(new_n12_), .Y(new_n13_));
  AND2X1 g04(.A(new_n13_), .B(new_n11_), .Y(new_n14_));
  AND2X1 g05(.A(b), .B(a), .Y(new_n15_));
  OR2X1  g06(.A(d), .B(c), .Y(new_n16_));
  INVX1  g07(.A(new_n16_), .Y(new_n17_));
  AND2X1 g08(.A(new_n15_), .B(new_n14_), .Y(new_n18_));
  AND2X1 g09(.A(f), .B(new_n12_), .Y(new_n19_));
  AND2X1 g10(.A(new_n10_), .B(e), .Y(new_n20_));
  OR2X1  g11(.A(new_n20_), .B(new_n19_), .Y(new_n21_));
  INVX1  g12(.A(new_n15_), .Y(new_n22_));
  OR2X1  g13(.A(new_n22_), .B(new_n21_), .Y(new_n23_));
  AND2X1 g14(.A(new_n17_), .B(new_n23_), .Y(new_n24_));
  OR2X1  g15(.A(new_n17_), .B(new_n23_), .Y(new_n25_));
  INVX1  g16(.A(new_n25_), .Y(new_n26_));
  OR2X1  g17(.A(new_n26_), .B(new_n24_), .Y(new_n27_));
  AND2X1 g18(.A(new_n16_), .B(new_n22_), .Y(new_n28_));
  OR2X1  g19(.A(new_n28_), .B(new_n21_), .Y(new_n29_));
  AND2X1 g20(.A(new_n15_), .B(new_n14_), .Y(new_n33_));
  AND2X1 g21(.A(new_n29_), .B(new_n27_), .Y(new_n36_));
  AND2X1 g22(.A(new_n36_), .B(new_n18_), .Y(new_n37_));
  INVX1  g23(.A(new_n18_), .Y(new_n38_));
  OR2X1  g24(.A(new_n16_), .B(new_n33_), .Y(new_n39_));
  AND2X1 g25(.A(new_n25_), .B(new_n39_), .Y(new_n40_));
  INVX1  g26(.A(new_n29_), .Y(new_n41_));
  OR2X1  g27(.A(new_n41_), .B(new_n40_), .Y(new_n42_));
  AND2X1 g28(.A(new_n42_), .B(new_n38_), .Y(new_n43_));
  OR2X1  g29(.A(new_n43_), .B(new_n37_), .Y(y1));
  OR2X1  g30(.A(new_n22_), .B(new_n21_), .Y(y2));
  AND2X1 g31(.A(new_n36_), .B(new_n38_), .Y(y3));
endmodule


