module multiplexer(
input wire [15:0] x,
input wire [15:0] y,
input wire [6:0] control,
output wire [15:0] x_out,
output wire [15:0] y_out,
);

always@(*)
begin
    if(control == 6'b111111) begin
        x_out = 16'b1;
        y_out = 16'b0;
    end
end


endmodule
