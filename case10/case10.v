module case10 (a,b,c,d,y1,y2);

    input a;
    input b;
    input c;
    input d;
    output y1;
    output y2;


    wire n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30;

    assign n1 = a & b & c;
    assign n2 = ~d;
    assign n3 = a | b | c;
    assign n4 = a ^ b ^ c;
    assign n5 = n1 & n2 & n3;
    assign n6 = n3 | n4;
    assign n7 = n5 ^ n6;
    assign n8 = n5 | n2 | n6;
    assign n9 = n7 & n8;
    assign n10 = n7 ^ n8;
    assign n11 = n9 | n10;
    assign n12 = n1 & n10 & n9;
    assign n13 = n11 ^ n12;
    assign n14 = n3 | n12;
    assign n15 = n13 & n14;
    assign n16 = n13 ^ n14;
    assign n17 = n15 | n4;
    assign n18 = n15 & n16;
    assign n19 = n17 ^ n18;
    assign n20 = n17 | n18;
    assign n21 = n19 & n2;
    assign n22 = n19 ^ n20;
    assign n23 = n21 | n22;
    assign n24 = n21 & n22;
    assign n25 = n23 ^ n6;
    assign n26 = n23 | n24;
    assign n27 = n25 & n26;
    assign n28 = n25 ^ n26;
    assign n29 = n27 | n4;
    assign n30 = n27 & n28;

    assign y1 = n30 ^ n29;
    assign y2 = n30 | n29;

endmodule


