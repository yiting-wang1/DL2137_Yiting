`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ELC 2137
// Engineer: Yiting Wang
// Create Date: 10/15/2020
//////////////////////////////////////////////////////////////////////////////////


module mux4
    #(parameter BIT=4)
    (
    input [BIT-1:0] in3, in2, in1, in0,
    input [1:0] sel,
    output reg [BIT-1:0] out
    );
    
    always @*
        case(sel)
            2'b11: out = in3;
            2'b10: out = in2;
            2'b01: out = in1;
            default: out = in0;
        endcase
        
endmodule
