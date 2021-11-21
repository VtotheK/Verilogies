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

integer i;

initial begin
    x = 2;
    y = 2;
    $display("x\ty\tzx\tnx\tzy\tny\tf\tno\tresult\tzr\tng\t");
    for(i=0; i<64; i=i+1) begin
       {zx, nx, zy, ny, f, no} = i; 
        $monitor("%0b\t%0b\t%0d\t%0d\t%0d\t%0d\t%0d\t%0d\t%0b\t%0d\t%0d\t",x,y,zx,nx,zy,ny,f,no,result,zr,ng);
       #10;
    end
end

ALU derp(x,y,zx,nx,zy,ny,f,no,result,zr,ng);

endmodule
