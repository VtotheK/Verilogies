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

always @(zx)
    begin
        if(zx == 1) begin
        out = 16'b0;
    end
end


endmodule
