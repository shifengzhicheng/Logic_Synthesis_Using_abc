module case6 (a,b,c,d,e,f,y1,y2,y3);

    input a;
    input b;
    input c;
    input d;
    input e;
    input f;
    output y1;
    output y2;
    output y3;


    wire n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20;

    assign n1 = ~(a & b);
    assign n2 = c | d;
    assign n3 = e ^ f;
    assign n4 = n1 & n2;
    assign n5 = n3 | n1;
    assign n6 = n2 ^ n5;
    assign n7 = n4 | n3;
    assign n8 = n6 & n7;
    assign n9 = n5 ^ n8;
    assign n10 = n7 | n9;
    assign n11 = n8 & n10;
    assign n12 = n9 ^ n11;
    assign n13 = n10 | n12;
    assign n14 = n11 & n13;
    assign n15 = n12 ^ n14;
    assign n16 = n13 | n15;
    assign n17 = n14 & n16;
    assign n18 = n15 ^ n17;
    assign n19 = n16 | n18;
    assign n20 = n17 & n19;

    assign y1 = n18 ^ n20;
    assign y2 = n19 | n20;
    assign y3 = n20 & n18;

endmodule
