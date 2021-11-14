module shitty_xor(
a ,
b ,
xout
);
    input a ;
    input b ;
    output xout;

    wire a ;
    wire b ;
    wire xout ;
    wire nout1;
    wire nout2;
    wire aout1;
    wire aout2;

    not(nout1, a);
    not(nout2, b);

    and(aout1, b, nout1);
    and(aout2, a, nout2);
    or(xout, aout1, aout2);

endmodule 
