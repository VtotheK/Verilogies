module fulladder(a,b,carry_in, sum, carry);

input a,b,carry_in;
output sum,carry;

xor(xab,a,b);
xor(sum,xab,carry_in);

and(cxab, xab, carry_in);
and(cab, a, b);
or(carry, cxab, cab);

endmodule
