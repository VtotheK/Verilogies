`include "adder.v"

module ALU( 
    input wire [15:0] x,
    input wire [15:0] y,
    input wire [5:0] op,
    output reg [15:0] out,
    output zr,
    output ng
);

wire [15:0] co;
reg [15:0] temp;
wire addwire;
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
    else if(op == 6'b001111) begin //-x
        out = -x;
    end
    else if(op == 6'b110011) begin //-y
        out = -y;
    end
    else if(op == 6'b111110) begin //x+1
    end
    else if(op == 6'b110111) begin //y+1
    end
    else if(op == 6'b001110) begin //x-1
    end
    else if(op == 6'b110010) begin //y-1
    end
    else if(op == 6'b000010) begin //x+y
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
