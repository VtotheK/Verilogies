`include "alu.v"

module alu_tb(
    output reg [15:0] x,
    output reg [15:0] y,
    output reg [5:0] op,
    input wire signed[15:0] result,
    input wire zr,
    input wire ng
);

integer i;

initial begin
    x = 1;
    y = 1;
    $display("zx\tnx\tzy\tny\tf\tno\tresult\tzr\tng\t");
    op  = 6'b101010; 
    $monitor("%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t",op[0],op[1],op[2],op[3],op[4],op[5],result,zr,ng);
    #10;
    op  = 6'b111111; 
    $monitor("%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t",op[0],op[1],op[2],op[3],op[4],op[5],result,zr,ng);
    #10;
    op = 6'b111010; 
    $monitor("%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t",op[0],op[1],op[2],op[3],op[4],op[5],result,zr,ng);
    #10;
    op  = 6'b001100; 
    $monitor("%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t",op[0],op[1],op[2],op[3],op[4],op[5],result,zr,ng);
    #10;
    op  = 6'b001100; 
    $monitor("%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t",op[0],op[1],op[2],op[3],op[4],op[5],result,zr,ng);
    #10;
    op = 6'b110000; 
    $monitor("%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t",op[0],op[1],op[2],op[3],op[4],op[5],result,zr,ng);
    #10;
    op  = 6'b001101; 
    $monitor("%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t",op[0],op[1],op[2],op[3],op[4],op[5],result,zr,ng);
    #10;
end

ALU derp(x,y,op,result,zr,ng);

endmodule
