`include "nor.v"

module nortest();

input val;
reg a,b;

integer i;
initial begin
    $monitor("%0d %0d NOR %0d",a,b,val);
    for(i=0; i < 4; i=i+1) begin 
        {a,b} = i;
        #5;
    end
end

shitty_nor derp (a,b,val);

endmodule
