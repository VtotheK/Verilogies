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
    input wire[16:0] result,
    input wire zr,
    input wire ng
);

ALU derp(x,y,zx,nx,zy,ny,f,no,result,zr,ng);

endmodule
