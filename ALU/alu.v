`include "adder.v"

module ALU( 
    input wire [16:0] x,
    input wire [16:0] y,
    input wire zx,
    input wire nx,
    input wire zy,
    input wire ny,
    input wire f,
    input wire no,
    output reg [16:0] out,
    output reg zr,
    output reg ng
);

always @(*)
    begin
        if(zx) begin
            out = 16'b0;
        end
        else
            out = 16'b100101;
        begin
        end
end
endmodule
