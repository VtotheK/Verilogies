`include "fulladder.v"
module adder(input [16:0] x,input [16:0] y,output [16:0] o);

reg [16:0] s;
wire swire, cwire;
reg carry;

genvar i;
generate
    for(i=0; i < 16; i=i+1) begin
    carry = cwire;
    fulladder derp(x[i], y[i], carry, swire, cwire);
    #1;
    end
endgenerate 
endmodule 
/*
module adder(input [16:0] x,input [16:0] y,output [16:0] o);

reg [16:0];


endmodule */
