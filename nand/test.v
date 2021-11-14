`include "nand.v"

module hello_world_tb();
reg a,b;
output A;
output B;
input C;

wire A;
wire B;
wire C;

integer i;
initial begin
    $monitor("%0d %0d NAND %0d",a,b,C);
    for (i=0; i<4; i=i+1) begin
        {a,b} = i;
        #10;
    end
end
shitty_nand derp( a, b, C);
endmodule
