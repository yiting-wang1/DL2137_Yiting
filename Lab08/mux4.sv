`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2020 12:09:55 PM
// Design Name: 
// Module Name: mux4
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
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
