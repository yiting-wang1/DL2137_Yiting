`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2020 11:37:25 AM
// Design Name: 
// Module Name: mux2
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


module mux2
    #(parameter BIT=4)
    (
    input [BIT-1:0] in1,
    input [BIT-1:0] in0,
    input sel,
    output [BIT-1:0] out
    );
    
    assign out = sel ? in1 : in0;
    
endmodule
