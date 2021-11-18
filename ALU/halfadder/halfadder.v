module halfadder(a,b, sum_out, carry_out);

input a, b;
output sum_out, carry_out;

or(sum_out, a ,b);
and(carry_out, a, b);
endmodule
