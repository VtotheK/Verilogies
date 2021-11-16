`include "equ.v"


module equtest(
in
);

reg a,b;
input in;
wire in;
integer i;

initial begin
    $monitor("%0d %0d EQU %0d",a,b,in);
    for (i=0; i<4; i=i+1) begin
        {a,b} = i;
        #10;
    end
end


equivalence e(a,b,in);
endmodule
