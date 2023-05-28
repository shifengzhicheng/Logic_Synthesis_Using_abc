module case4 (a,b,c,d,e,f,g,x,y,z);

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
wire ab_and, bc_or, cd_nand, de_xor, ef_and, fg_or, ga_nand;
wire ac_or, bd_and, ce_nand, df_xor, eg_and, fa_or, gb_nand;
wire ae_and, bf_or, cg_nand, da_xor, eb_and, fc_or, gd_nand;
wire ad_or, be_and, cf_nand, dg_xor, ea_and, fb_or, gc_nand;

// Gates for pairs of inputs
and   (ab_and, a, b);
or    (bc_or, b, c);
nand  (cd_nand, c, d);
xor   (de_xor, d, e);
and   (ef_and, e, f);
or    (fg_or, f, g);
nand  (ga_nand, g, a);

// Gates for pairs of non-adjacent inputs
or    (ac_or, a, c);
and   (bd_and, b, d);
nand  (ce_nand, c, e);
xor   (df_xor, d, f);
and   (eg_and, e, g);
or    (fa_or, f, a);
nand  (gb_nand, g, b);

// Gates for pairs of inputs with two in between
and   (ae_and, a, e);
or    (bf_or, b, f);
nand  (cg_nand, c, g);
xor   (da_xor, d, a);
and   (eb_and, e, b);
or    (fc_or, f, c);
nand  (gd_nand, g, d);

// Gates for pairs of inputs with three in between
or    (ad_or, a, d);
and   (be_and, b, e);
nand  (cf_nand, c, f);
xor   (dg_xor, d, g);
and   (ea_and, e, a);
or    (fb_or, f, b);
nand  (gc_nand, g, c);

// Gates for outputs
and   (x, ab_and, ac_or, ae_and, ad_or);
nand  (y, bc_or, bd_and, bf_or, be_and);
or    (z, cd_nand, ce_nand, cg_nand, cf_nand);

endmodule

