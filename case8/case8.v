module case8 (a,b,c,d,e,f,g,h,i,j,y1,y2,y3,y4,y5);

    input a;
    input b;
    input c;
    input d;
    input e;
    input f;
    input g;
    input h;
    input i;
    input j;
    output y1;
    output y2;
    output y3;
    output y4;
    output y5;


    wire n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30;

    assign n1 = a | b;
    assign n2 = c & d;
    assign n3 = e ^ f;
    assign n4 = g | h;
    assign n5 = i & j;
    assign n6 = n1 & n2;
    assign n7 = n3 | n4;
    assign n8 = n5 ^ n6;
    assign n9 = n7 & n8;
    assign n10 = n9 ^ n6;
    assign n11 = n10 | n7;
    assign n12 = n11 & n8;
    assign n13 = n12 ^ n9;
    assign n14 = n13 | n10;
    assign n15 = n14 & n11;
    assign n16 = n15 ^ n12;
    assign n17 = n16 | n13;
    assign n18 = n17 & n14;
    assign n19 = n18 ^ n15;
    assign n20 = n19 | n16;
    assign n21 = n20 & n17;
    assign n22 = n21 ^ n18;
    assign n23 = n22 | n19;
    assign n24 = n23 & n20;
    assign n25 = n24 ^ n21;
    assign n26 = n25 | n22;
    assign n27 = n26 & n23;
    assign n28 = n27 ^ n24;
    assign n29 = n28 | n25;
    assign n30 = n29 & n26;

    assign y1 = n27 ^ n30;
    assign y2 = n28 | n29;
    assign y3 = n30 & n27;
    assign y4 = n28 ^ n26;
    assign y5 = n29 | n27;

endmodule

