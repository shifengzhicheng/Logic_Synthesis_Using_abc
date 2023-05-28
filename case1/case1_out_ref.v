
module case1 ( 
    a, b, c, d,
    x, y, z  );
  input  a, b, c, d;
  output x, y, z;
  wire new_n8_, new_n9_, new_n10_, new_n11_, new_n12_, new_n13_, new_n14_,
    new_n15_, new_n16_, new_n18_, new_n19_, new_n20_, new_n21_, new_n22_,
    new_n23_, new_n24_, new_n25_, new_n26_, new_n27_, new_n28_, new_n29_,
    new_n30_, new_n31_, new_n33_, new_n34_, new_n35_, new_n36_;
  OR2X1  g00(.A(b), .B(a), .Y(new_n8_));
  INVX1  g01(.A(new_n8_), .Y(new_n9_));
  INVX1  g02(.A(c), .Y(new_n10_));
  INVX1  g03(.A(d), .Y(new_n11_));
  OR2X1  g04(.A(new_n11_), .B(new_n10_), .Y(new_n12_));
  AND2X1 g05(.A(new_n12_), .B(new_n9_), .Y(new_n13_));
  OR2X1  g06(.A(d), .B(c), .Y(new_n14_));
  INVX1  g07(.A(new_n14_), .Y(new_n15_));
  AND2X1 g08(.A(new_n15_), .B(new_n8_), .Y(new_n16_));
  OR2X1  g09(.A(new_n16_), .B(new_n13_), .Y(x));
  AND2X1 g10(.A(b), .B(a), .Y(new_n18_));
  AND2X1 g11(.A(d), .B(new_n10_), .Y(new_n19_));
  AND2X1 g12(.A(new_n11_), .B(c), .Y(new_n20_));
  OR2X1  g13(.A(new_n20_), .B(new_n19_), .Y(new_n21_));
  OR2X1  g14(.A(new_n21_), .B(new_n18_), .Y(new_n22_));
  INVX1  g15(.A(new_n18_), .Y(new_n23_));
  OR2X1  g16(.A(new_n11_), .B(c), .Y(new_n24_));
  OR2X1  g17(.A(d), .B(new_n10_), .Y(new_n25_));
  AND2X1 g18(.A(new_n25_), .B(new_n24_), .Y(new_n26_));
  OR2X1  g19(.A(new_n26_), .B(new_n23_), .Y(new_n27_));
  AND2X1 g20(.A(new_n27_), .B(new_n22_), .Y(new_n28_));
  AND2X1 g21(.A(new_n18_), .B(new_n15_), .Y(new_n29_));
  AND2X1 g22(.A(new_n23_), .B(new_n14_), .Y(new_n30_));
  OR2X1  g23(.A(new_n30_), .B(new_n29_), .Y(new_n31_));
  AND2X1 g24(.A(new_n31_), .B(new_n28_), .Y(y));
  OR2X1  g25(.A(new_n18_), .B(new_n12_), .Y(new_n33_));
  OR2X1  g26(.A(new_n33_), .B(new_n16_), .Y(new_n34_));
  INVX1  g27(.A(new_n34_), .Y(new_n35_));
  AND2X1 g28(.A(new_n33_), .B(new_n16_), .Y(new_n36_));
  OR2X1  g29(.A(new_n36_), .B(new_n35_), .Y(z));
endmodule


