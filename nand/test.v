`include "nand.v"

module hello_world_tb();
reg a,b;
input C;

wire A,B;

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
