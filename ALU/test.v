`include "alu.v"

module alu_tb(
    output reg [16:0] x,
    output reg [16:0] y,
    output reg zx,
    output reg nx,
    output reg zy,
    output reg ny,
    output reg f,
    output reg no,
    input wire signed[16:0] result,
    input wire zr,
    input wire ng
);

integer i;

initial begin
    x = 1;
    y = 1;
    $display("x\ty\tzx\tnx\tzy\tny\tf\tno\tresult\tzr\tng\t");
    {zx, nx, zy, ny, f, no} = 6'b101010; 
    $monitor("%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t",x,y,zx,nx,zy,ny,f,no,result,zr,ng);
    #100;
    {zx, nx, zy, ny, f, no} = 6'b000001; 
    $monitor("%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t",x,y,zx,nx,zy,ny,f,no,result,zr,ng);
    #100;
    #10;
end

ALU derp(x,y,zx,nx,zy,ny,f,no,result,zr,ng);

endmodule
