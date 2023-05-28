module case5 (a,b,c,d,e,f,x,y,z);

input a;
input b;
input c;
input d;
input e;
input f;
output x;
output y;
output z;



// Defining intermediate wires
wire w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15, w16, w17, w18, w19, w20, w21, w22, w23, w24, w25, w26, w27, w28, w29, w30, w31, w32, w33, w34, w35;

// Gates for pairs of inputs
and   (w1, a, b);
nand  (w2, w1, c);
and   (w3, w2, d);
nand  (w4, w3, e);
and   (w5, w4, f);

nand  (w6, w5, a);
and   (w7, w6, b);
nand  (w8, w7, c);
and   (w9, w8, d);
nand  (w10, w9, e);

and   (w11, w10, a);
nand  (w12, w11, b);
and   (w13, w12, c);
nand  (w14, w13, d);
and   (w15, w14, e);

nand  (w16, w15, a);
and   (w17, w16, b);
nand  (w18, w17, c);
and   (w19, w18, d);
nand  (w20, w19, e);

and   (w21, w20, a);
nand  (w22, w21, b);
and   (w23, w22, c);
nand  (w24, w23, d);
and   (w25, w24, e);

nand  (w26, w25, a);
and   (w27, w26, b);
nand  (w28, w27, c);
and   (w29, w28, d);
nand  (w30, w29, e);

and   (w31, w30, f);
nand  (w32, w31, a);
and   (w33, w32, b);
nand  (w34, w33, c);
and   (w35, w34, d);

// Gates for outputs
or   (x, w35, a);
and  (y, w35, b);
xor  (z, w35, c);

endmodule


