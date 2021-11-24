`include "adder.v"

module ALU( 
    input wire [15:0] x,
    input wire [15:0] y,
    input wire [5:0] op,
    output reg [15:0] out,
    output zr,
    output ng
);

wire co;
reg [15:0] temp;
wire [15:0] increment_x;
wire [15:0] decrement_x;
wire [15:0] increment_y; 
wire [15:0] decrement_y;
wire [15:0] sum_xy;
wire [15:0] xminusy;
wire [15:0] yminusx;


adder inc_x(x,16'b1,increment_x,co);
adder dec_x(x,~16'b0,decrement_x,co);
adder inc_y(16'b1,y,increment_y,co);
adder dec_y(~16'b0,y,decrement_y,co);
adder sum(x,y,sum_xy,co);

always @(*)
    
    if(op == 6'b010101) begin //0
        out = 16'b0;
    end
    else if(op == 6'b111111) begin //1
        out = 16'b1;
    end
    else if(op == 6'b010111) begin //-1
        out = ~(16'b0);   //~0 == signed 1111111111111111 == -1
    end
    else if(op == 6'b001100) begin //x
        out = x;
    end
    else if(op == 6'b000011) begin //y
        out = y;
    end
    else if(op == 6'b101100) begin //!x
        out = !x;
    end
    else if(op == 6'b110001) begin //!y
        out = !y;
    end
    else if(op == 6'b111100) begin //-x
        out = -x;
    end
    else if(op == 6'b110011) begin //-y
        out = -y;
    end
    else if(op == 6'b111110) begin //x+1
        out = increment_x;
    end
    else if(op == 6'b110111) begin //y+1
        out = increment_y;
    end
    else if(op == 6'b011100) begin //x-1
        out = decrement_x;
    end
    else if(op == 6'b010011) begin //y-1
        out = decrement_y;
    end
    else if(op == 6'b010000) begin //x+y
        out = sum_xy;
    end
    else if(op == 6'b010011) begin //x-y
    end
    else if(op == 6'b000111) begin //y-x
    end
    else if(op == 6'b000000) begin //x&y
    end
    else if(op == 6'b010101) begin //x|y
    end

endmodule
