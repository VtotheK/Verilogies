module shitty_nand(a, b, nandout);
    input a,b ;
    output nandout;

    wire anout;
    wire bnout;

    not(anout, a);
    not(bnout, b);

    or(nandout, anout, bnout);
endmodule 
