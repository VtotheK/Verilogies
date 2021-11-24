`include "alu.v"

module alu_tb(
    output reg [15:0] x,
    output reg [15:0] y,
    output reg [5:0] op,
    input wire signed[15:0] result,
    input zr,
    input ng
);

integer i;

initial begin
    x = 2;
    y = 3;
    $display("zx\tnx\tzy\tny\tf\tno\tresult\tzr\tng\t");
    op  = 6'b010101; 
    $monitor("%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t f(x,y)=0",op[0],op[1],op[2],op[3],op[4],op[5],result,zr,ng);
    #10;
    op  = 6'b111111; 
    $monitor("%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t f(x,y)=1",op[0],op[1],op[2],op[3],op[4],op[5],result,zr,ng);
    #10;
    op = 6'b010111; 
    $monitor("%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t f(x,y)=-1",op[0],op[1],op[2],op[3],op[4],op[5],result,zr,ng);
    #10;
    op  = 6'b001100; 
    $monitor("%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t f(x,y)=x",op[0],op[1],op[2],op[3],op[4],op[5],result,zr,ng);
    #10;
    op  = 6'b000011; 
    $monitor("%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t f(x,y)=y",op[0],op[1],op[2],op[3],op[4],op[5],result,zr,ng);
    #10;
    op = 6'b101100; 
    $monitor("%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t f(x,y)=!x",op[0],op[1],op[2],op[3],op[4],op[5],result,zr,ng);
    #10;
    op  = 6'b100011; 
    $monitor("%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t f(x,y)=!y",op[0],op[1],op[2],op[3],op[4],op[5],result,zr,ng);
    #10;
    op  = 6'b111100; 
    $monitor("%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t f(x,y)=-x",op[0],op[1],op[2],op[3],op[4],op[5],result,zr,ng);
    #10;
    op  = 6'b110011; 
    $monitor("%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t f(x,y)=-y",op[0],op[1],op[2],op[3],op[4],op[5],result,zr,ng);
    #10;
    op  = 6'b111110; 
    $monitor("%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t f(x,y)=x+1",op[0],op[1],op[2],op[3],op[4],op[5],result,zr,ng);
    #10;
    op  = 6'b111011; 
    $monitor("%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t f(x,y)=y+1",op[0],op[1],op[2],op[3],op[4],op[5],result,zr,ng);
    #10;
    op = 6'b011100;
    $monitor("%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t f(x,y)=x-1",op[0],op[1],op[2],op[3],op[4],op[5],result,zr,ng);
    #10;
    op = 6'b010011;
    $monitor("%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t f(x,y)=y-1",op[0],op[1],op[2],op[3],op[4],op[5],result,zr,ng);
    #10;
    op = 6'b010000;
    $monitor("%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t f(x,y)=x+y",op[0],op[1],op[2],op[3],op[4],op[5],result,zr,ng);
    #10;
    op = 6'b110010;
    $monitor("%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t f(x,y)=x-y",op[0],op[1],op[2],op[3],op[4],op[5],result,zr,ng);
    #10;
    op = 6'b111000;
    $monitor("%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t f(x,y)=y-x",op[0],op[1],op[2],op[3],op[4],op[5],result,zr,ng);
    #10;
    op = 6'b000000;
    $monitor("%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t f(x,y)=x&y",op[0],op[1],op[2],op[3],op[4],op[5],result,zr,ng);
    #10;
end

ALU derp(x,y,op,result,zr,ng);

endmodule
