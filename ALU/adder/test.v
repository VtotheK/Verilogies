`include "adder.v"
module addertest(input [15:0]result, output [15:0] x, output [15:0] y);

reg [15:0] x = 120;
reg [15:0] y = 2;
wire [15:0] result; 
reg [15:0] res;

initial begin
    $monitor("%0d",res);
end


adder a(x,y,result);
endmodule
