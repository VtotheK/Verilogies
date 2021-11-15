module shitty_nor(a, b, c);

input a,b;
output c;
wire a,b,c;

output anot;
output bnot;


not(anot,a);
not(bnot,b);

and(c, anot,bnot);

endmodule
