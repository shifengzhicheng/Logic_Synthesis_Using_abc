
module case1 (a, b, c, d, x, y, z);


input a;
input b;
input c;
input d;
output x;
output y;
output z;

wire ab_and, ab_or, ab_nand, ab_nor, ab_xor, ab_xnor;
wire cd_and, cd_or, cd_nand, cd_nor, cd_xor, cd_xnor;
wire ac_and, bd_and, ac_or, bd_or, ac_nand, bd_nand, ac_nor, bd_nor, ac_xor, bd_xor, ac_xnor, bd_xnor;

// Gates for a and b
and  (ab_and, a, b);
or   (ab_or, a, b);
nand (ab_nand, a, b);
nor  (ab_nor, a, b);
xor  (ab_xor, a, b);
xnor (ab_xnor, a, b);

// Gates for c and d
and  (cd_and, c, d);
or   (cd_or, c, d);
nand (cd_nand, c, d);
nor  (cd_nor, c, d);
xor  (cd_xor, c, d);
xnor (cd_xnor, c, d);

// Gates for ab and cd results
and  (ac_and, ab_nor, cd_nand);
and  (bd_and, ab_xor, cd_xnor);
or   (ac_or, ab_and, cd_or);
or   (bd_or, ab_xnor, cd_xor);
nand (ac_nand, ab_nand, cd_and);
nand (bd_nand, ab_or, cd_nor);
nor  (ac_nor, ab_xor, cd_xor);
nor  (bd_nor, ab_nor, cd_or);
xor  (ac_xor, ab_xnor, cd_nand);
xor  (bd_xor, ab_nand, cd_nor);
xnor (ac_xnor, ab_and, cd_xnor);
xnor (bd_xnor, ab_or, cd_xor);

// Outputs
assign x = ac_and | bd_nor;
assign y = ac_xnor & bd_xor;
assign z = ac_nand ^ bd_nand;

endmodule

