`include "test.v"

module hello_world_tb();

initial begin
    $monitor("%b",C);
end

    output A;
    output B;
    input C;

    wire A;
    wire B;
    wire C;

    assign A = 0;
    assign B = 1;

    
hello_world derp(
A,
B,
C
);
endmodule
