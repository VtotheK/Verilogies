module equivalence(a,b,c); 

input a,b; 
output c;

wire a,b,c;


and(a_and, a, bn);
and(b_and, b, an);
not(an, a);
not(bn, b);
or(x, a_and, b_and);
not(c, x);

endmodule
