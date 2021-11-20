`include "fulladder.v"
module adder(
    input [15:0] x,
    input [15:0] y,
    output [15:0] o
);
wire [15:0] carry;
genvar i;

always @(x or y) begin
    $display("Input x: %0d",x);
    $display("Input y: %0d",y);
end

generate
    for(i=0; i < 15; i=i+1) begin : fulladdgen
        if(i > 0)
        begin 
        fulladder adders(
            .x(x[i]),
            .y(y[i]),
            .carry_in(o[i]),
            .sum(o[i]),
            .carry(carry[i]));
        end
        else
        begin
        fulladder adders(
            .x(x[i]),
            .y(y[i]),
            .carry_in(1'b0),
            .sum(o[i]),
            .carry(carry[i]));
        end
end
endgenerate
endmodule
