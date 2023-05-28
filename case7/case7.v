module case7 (a,b,c,d,e,f,y1,y2,y3);

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

    assign n1 = a | b;
    assign n2 = c & d;
    assign n3 = ~e;
    assign n4 = f ^ n1;
    assign n5 = n2 | n3;
    assign n6 = n4 & n5;
    assign n7 = n6 ^ n1;
    assign n8 = n7 | n2;
    assign n9 = n8 & n3;
    assign n10 = n9 ^ n4;
    assign n11 = n10 | n5;
    assign n12 = n11 & n6;
    assign n13 = n12 ^ n7;
    assign n14 = n13 | n8;
    assign n15 = n14 & n9;
    assign n16 = n15 ^ n10;
    assign n17 = n16 | n11;
    assign n18 = n17 & n12;
    assign n19 = n18 ^ n13;
    assign n20 = n19 | n14;

    assign y1 = n15 ^ n20;
    assign y2 = n16 | n19;
    assign y3 = n20 & n17;

endmodule

