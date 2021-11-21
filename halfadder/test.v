`include "halfadder.v"

module halfadder_test(sum_in, carry_in);

input sum_in, carry_in;
reg a, b;

integer i;
initial begin
    $display("a b S C");
    $monitor("%0d %0d %0d %0d", a, b, sum_in, carry_in);
    for(i = 0;i < 4;i=i+1) begin
        {a,b} = i;
        #10;
    end
end

halfadder derp(a,b,sum_in,carry_in);

endmodule
