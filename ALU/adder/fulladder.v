module fulladder(x,y,carry_in, sum, carry);

input x,y,carry_in;
output sum,carry;
wire xab, cab, cxab;

xor(xab,x,y);
xor(sum,xab,carry_in);

and(cxab, xab, carry_in);
and(cab, x, y);
or(carry, cxab, cab);

endmodule
