`include "adder.v"
module addertest(input [16:0]result, output [16:0] x, output [16:0] y);

reg [16:0] res;
wire [16:0] results;
reg [16:0] x = 127;
reg [16:0] y = 1;

integer i;

always begin
    $monitor("%0d", i);
    for(i=0; i < 15; i=i+1) begin
        res[i] = results[i];
        #100;
    end
end

adder shit(x,y,results);

endmodule
