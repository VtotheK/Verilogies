`include "fulladder.v"

module fulladder_test();

input sum, carry;
reg a, b, carry_out;

integer i;
initial begin
    $display("a b c S C");
    $monitor("%0d %0d %0d %0d %0d",a,b,carry_out,sum,carry);
    for(i=0; i < 8; ++i) begin
        {a,b,carry_out} = i; 
        #10;
    end
end

fulladder derp(a, b, carry_out, sum, carry);
endmodule 
