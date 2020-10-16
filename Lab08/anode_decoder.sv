`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2020 12:38:40 PM
// Design Name: 
// Module Name: anode_decoder
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
