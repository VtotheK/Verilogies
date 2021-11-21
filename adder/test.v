`include "adder.v"
module addertest(input [15:0]result, input co, output [15:0] x, output [15:0] y);
reg [15:0] x = 230;
reg [15:0] y = 103;
reg [15:0] res;

always @(co)
begin
    res <= result;
	#5;
    $display("Result: %0d",result);
end

adder a(x,y,result,co);
endmodule
