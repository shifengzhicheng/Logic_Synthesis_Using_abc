module case3 (a,b,c,d,e,f,g,x,y,z);

input a;
input b;
input c;
input d;
input e;
input f;
input g;
output x;
output y;
output z;


// Defining intermediate wires
wire ab_and, bc_or, cd_xor, de_nand, ef_nor, fg_xor, ag_nand;
wire ace_and, bdf_xor, ceg_nand, adg_nor, bef_and, cfd_xor;
wire abc_and, def_xor, ega_nand, bcd_nor, fae_and, gcb_xor;

// Gates for pairs of inputs
and   (ab_and, a, b);
or    (bc_or, b, c);
xor   (cd_xor, c, d);
nand  (de_nand, d, e);
nor   (ef_nor, e, f);
xor   (fg_xor, f, g);
nand  (ag_nand, a, g);

// Gates for combinations of three inputs
and   (ace_and, a, c, e);
xor   (bdf_xor, b, d, f);
nand  (ceg_nand, c, e, g);
nor   (adg_nor, a, d, g);
and   (bef_and, b, e, f);
xor   (cfd_xor, c, f, d);

// Gates for combinations of four inputs
and   (abc_and, a, b, c, d);
xor   (def_xor, d, e, f, g);
nand  (ega_nand, e, g, a, b);
nor   (bcd_nor, b, c, d, e);
and   (fae_and, f, a, e, g);
xor   (gcb_xor, g, c, b, a);

// Gates for outputs
and   (x, ab_and, ace_and, abc_and);
or    (y, bc_or, bdf_xor, def_xor);
xor   (z, cd_xor, ceg_nand, ega_nand);

endmodule
