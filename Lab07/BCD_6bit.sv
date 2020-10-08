`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2020 12:34:07 PM
// Design Name: 
// Module Name: 6_bit_BCD
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


module BCD_6bit(
    input [5:0] A,
    output [7:0] B
    );
    
    wire [2:0] w1, w2;
    
    add3 C1(
        .num({ 0, A[5:3] }),
        .modnum({ B[6], w1[2:0] })
    );
    
    add3 C2(
        .num({ w1[2:0], A[2] }),
        .modnum({ B[5], w2[2:0]})
    );
            
    add3 C3(
        .num({ w2[2:0], A[1] }),
        .modnum({ B[4:1]})
    );
    
    assign B[7] = 0;
    assign B[0] = A[0];
    
endmodule
