`include "fulladder.v"
module adder(
    input [15:0] x,
    input [15:0] y,
    output [15:0] o,
    output co
);
wire [15:0] carry;
genvar i;

always @(x or y) begin
    $display("Input x: %0d",x);
    $display("Input y: %0d",y);
end
			fulladder a1(x[0],y[0], 1'b0, o[0], carry[0]);
			fulladder a2(x[1],y[1], carry[0], o[1], carry[1]);
			fulladder a3(x[2],y[2], carry[1], o[2], carry[2]);
			fulladder a4(x[3],y[3], carry[2], o[3], carry[3]);
			fulladder a5(x[4],y[4], carry[3], o[4], carry[4]);
			fulladder a6(x[5],y[5], carry[4], o[5], carry[5]);
			fulladder a7(x[6],y[6], carry[5], o[6], carry[6]);
			fulladder a8(x[7],y[7], carry[6], o[7], carry[7]);
			fulladder a9(x[8],y[8], carry[7], o[8], carry[8]);
			fulladder a10(x[9],y[9], carry[8], o[9], carry[9]);
			fulladder a11(x[10],y[10], carry[9], o[10], carry[10]);
			fulladder a12(x[11],y[11], carry[10], o[11], carry[11]);
			fulladder a13(x[12],y[12], carry[11], o[12], carry[12]);
			fulladder a14(x[13],y[13], carry[12], o[13], carry[13]);
			fulladder a15(x[14],y[14], carry[13], o[14], carry[14]);
			fulladder a16(x[15],y[15], carry[14], o[15], co);
/*
generate
    for(i=0; i < 15; i=i+1) begin : fulladdgen
        if(i == 0)
        begin 
			fulladder adders(
				.x(x[i]),
				.y(y[i]),
				.carry_in(1'b0),
				.sum(o[i]),
				.carry(carry[i]));
        end
        else if(i < 14)
        begin
			fulladder adders(
				.x(x[i]),
				.y(y[i]),
				.carry_in(carry[i-1]),
				.sum(o[i]),
				.carry(carry[i]));
        end
		else
		begin 
			fulladder adders(
				.x(x[i]),
				.y(y[i]),
				.carry_in(carry[i-1]),
				.sum(o[i]),
				.carry(co));
		end
end
endgenerate
*/
endmodule
