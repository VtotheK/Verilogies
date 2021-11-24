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
reg [15:0] xval;
reg [15:0] yval;
wire [15:0] value;

adder sum(xval,yval,value,co);

always @(*) if(op == 6'b010101) begin //0
        out = value;
        xval = 16'b0;
        yval = 16'b0;
    end
    else if(op == 6'b111111) begin //1
        out = value;
        xval = 16'b1;
        yval = 16'b0;
    end
    else if(op == 6'b010111) begin //-1
        out = value;
        xval = 16'b0;
        yval = ~16'b0;
    end
    else if(op == 6'b001100) begin //x
        out = value;
        xval = x;
        yval = 16'b0;
    end
    else if(op == 6'b000011) begin //y
        out = value;
        xval = 16'b0;
        yval = y;
    end
    else if(op == 6'b101100) begin //!x
        out = value;
        xval = !x;
        yval = 16'b0;
    end
    else if(op == 6'b110001) begin //!y
        out = value;
        xval = 16'b0;
        yval = !y;
    end
    else if(op == 6'b111100) begin //-x
        out = value;
        xval = -x;
        yval = 16'b0;
    end
    else if(op == 6'b110011) begin //-y
        out = value;
        xval = 16'b0;
        yval = -y;
    end
    else if(op == 6'b111110) begin //x+1
        out = value;
        xval = x;
        yval = 16'b1;
    end
    else if(op == 6'b111011) begin //y+1
        out = value;
        xval = 16'b1;
        yval = y;
    end
    else if(op == 6'b011100) begin //x-1
        out = value;
        xval = x;
        yval = ~(16'b0);
    end
    else if(op == 6'b010011) begin //y-1
        out = value;
        xval = ~(16'b0);
        yval = y;
    end
    else if(op == 6'b010000) begin //x+y
        out = value;
        xval = x;
        yval = y;
    end
    else if(op == 6'b110010) begin //x-y
        out = value;
        xval = x;
        yval = -y;
    end
    else if(op == 6'b111000) begin //y-x
        out = value;
        xval = -x;
        yval = y;
    end
    else if(op == 6'b000000) begin //x&y
        out = x&y;
    end
    else if(op == 6'b010101) begin //x|y
        out = x|y;
    end
endmodule
