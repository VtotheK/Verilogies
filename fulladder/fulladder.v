module fulladder(
    input a,
    input b,
    input carry_in,
    output sum,
    output carry);

wire xab, cxab, cab;

xor(xab,a,b);
xor(sum,xab,carry_in);

and(cxab, xab, carry_in);
and(cab, a, b);
or(carry, cxab, cab);

endmodule
