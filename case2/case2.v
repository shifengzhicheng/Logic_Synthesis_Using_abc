module case2 (a, b, c, d, e, x, y, z);


input a;
input b;
input c;
input d;
input e;
output x;
output y;
output z;

wire ab_and, cd_or, ae_xor, be_nand, de_nor;
wire abcd_and, abde_or, acde_nand, abce_nor, bcde_xor;
wire final_and, final_or, final_nand, final_nor, final_xor;

// Gates for pairs of inputs
and  (ab_and, a, b);
or   (cd_or, c, d);
xor  (ae_xor, a, e);
nand (be_nand, b, e);
nor  (de_nor, d, e);

// Gates for quadruples of inputs
and  (abcd_and, a, b, c, d);
or   (abde_or, a, b, d, e);
nand (acde_nand, a, c, d, e);
nor  (abce_nor, a, b, c, e);
xor  (bcde_xor, b, c, d, e);

// Gates for final results
and   (final_and, ab_and, cd_or, ae_xor);
or    (final_or, be_nand, de_nor, acde_nand);
nand  (final_nand, abcd_and, abde_or, abce_nor);
nor   (final_nor, bcde_xor, final_and, final_or);
xor   (final_xor, final_nand, final_nor);

// Outputs
assign x = final_and;
assign y = final_or;
assign z = final_xor;

endmodule

