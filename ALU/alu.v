`include "adder.v"

module ALU( 
    input wire [15:0] x,
    input wire [15:0] y,
    input wire [5:0] op,
    output reg [15:0] out,
    output reg zr,
    output reg ng
);

wire co;
reg [15:0] temp;
always @(*)
    
    if(op == 6'b101010) begin //0
    end
    else if(op == 6'b111111) begin //1
    end
    else if(op == 6'b111010) begin //-1
    end
    else if(op == 6'b001100) begin //x
    end
    else if(op == 6'b110000) begin //y
    end
    else if(op == 6'b001101) begin //!x
    end
    else if(op == 6'b110001) begin //!y
    end
    else if(op == 6'b001111) begin //-x
    end
    else if(op == 6'b110011) begin //-y
    end
    else if(op == 6'b110011) begin //x+1
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
