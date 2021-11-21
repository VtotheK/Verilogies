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

wire co;
always @(*)
    begin
        if(zx) begin
            out = 16'b0;
        end
        if(zy) begin
            out = 16'b0;
        end
        if(nx) begin
            out = -x;
        end
        if(ny) begin
            out = -y;
        end
        if(f) begin
            out = x + y;
        end
        else if(!f) begin
            out = x&y;
        end
        if(no) begin
            out = !out; 
        end
end
endmodule
