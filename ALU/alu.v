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
reg [15:0] derp;
reg [15:0] zero = 16'b0;
reg [15:0] one = 16'b1;
reg [15:0] xval;
reg [15:0] yval;

adder sum(xval,yval,value,co);


always @(*)
    if(op == 6'b010101) begin //0
        xval = 16'b0;
        yval = 16'b0;
    end
    else if(op == 6'b111111) begin //1
        xval = 16'b1;
        yval = 16'b0;
    end
    else if(op == 6'b010111) begin //-1
        xval = 16'b0;
        yval = ~16'b0;
    end
    else if(op == 6'b001100) begin //x
        xval = x;
        yval = 16'b0;
    end
    else if(op == 6'b000011) begin //y
        yval = y;
        xval = 16'b0;
    end
    else if(op == 6'b101100) begin //!x
        xval = !x;
        yval = 16'b0;
    end
    else if(op == 6'b110001) begin //!y
        yval = !y;
        xval = 16'b0;
    end
    else if(op == 6'b111100) begin //-x
        yval = !y;
        xval = 16'b0;
    end
    /*
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
*/
endmodule
