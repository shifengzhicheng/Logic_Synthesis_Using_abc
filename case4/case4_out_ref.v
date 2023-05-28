// Benchmark "case4" written by ABC on Fri May 12 15:13:57 2023

module case4 ( 
    a, b, c, d, e, f, g,
    x, y, z  );
  input  a, b, c, d, e, f, g;
  output x, y, z;
  wire new_n11_, new_n12_, new_n13_, new_n14_, new_n15_, new_n16_, new_n17_,
    new_n18_, new_n19_, new_n21_, new_n22_, new_n23_, new_n24_, new_n25_,
    new_n26_, new_n27_, new_n28_, new_n29_, new_n31_, new_n32_, new_n33_,
    new_n34_, new_n35_, new_n36_, new_n37_, new_n38_, new_n39_;
  OR2X1  g00(.A(d), .B(a), .Y(new_n11_));
  INVX1  g01(.A(new_n11_), .Y(new_n12_));
  INVX1  g02(.A(a), .Y(new_n13_));
  INVX1  g03(.A(e), .Y(new_n14_));
  OR2X1  g04(.A(new_n14_), .B(new_n13_), .Y(new_n15_));
  INVX1  g05(.A(b), .Y(new_n16_));
  OR2X1  g06(.A(new_n16_), .B(new_n13_), .Y(new_n17_));
  OR2X1  g07(.A(new_n17_), .B(new_n15_), .Y(new_n18_));
  OR2X1  g08(.A(new_n18_), .B(new_n12_), .Y(new_n19_));
  INVX1  g09(.A(new_n19_), .Y(x));
  OR2X1  g10(.A(new_n14_), .B(new_n16_), .Y(new_n21_));
  OR2X1  g11(.A(f), .B(b), .Y(new_n22_));
  INVX1  g12(.A(new_n22_), .Y(new_n23_));
  OR2X1  g13(.A(c), .B(b), .Y(new_n24_));
  INVX1  g14(.A(new_n24_), .Y(new_n25_));
  INVX1  g15(.A(d), .Y(new_n26_));
  OR2X1  g16(.A(new_n26_), .B(new_n16_), .Y(new_n27_));
  OR2X1  g17(.A(new_n27_), .B(new_n25_), .Y(new_n28_));
  OR2X1  g18(.A(new_n28_), .B(new_n23_), .Y(new_n29_));
  OR2X1  g19(.A(new_n29_), .B(new_n21_), .Y(y));
  INVX1  g20(.A(c), .Y(new_n31_));
  INVX1  g21(.A(f), .Y(new_n32_));
  OR2X1  g22(.A(new_n32_), .B(new_n31_), .Y(new_n33_));
  INVX1  g23(.A(g), .Y(new_n34_));
  OR2X1  g24(.A(new_n34_), .B(new_n31_), .Y(new_n35_));
  OR2X1  g25(.A(new_n26_), .B(new_n31_), .Y(new_n36_));
  OR2X1  g26(.A(new_n14_), .B(new_n31_), .Y(new_n37_));
  OR2X1  g27(.A(new_n37_), .B(new_n36_), .Y(new_n38_));
  OR2X1  g28(.A(new_n38_), .B(new_n35_), .Y(new_n39_));
  OR2X1  g29(.A(new_n39_), .B(new_n33_), .Y(z));
endmodule


