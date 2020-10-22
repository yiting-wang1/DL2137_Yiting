`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ELC 2137
// Engineer: Yiting Wang
// Create Date: 10/15/2020
//////////////////////////////////////////////////////////////////////////////////


module anode_decoder(
    input [1:0] in,
    output reg [3:0] out
    );
    
    always @*
        case(in)
            2'b11: out = 4'b0111;
            2'b10: out = 4'b1011;
            2'b01: out = 4'b1101;
            default: out = 4'b1110;
        endcase
    
endmodule
