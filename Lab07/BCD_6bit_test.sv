`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2020 01:23:21 PM
// Design Name: 
// Module Name: BCD_6bit_test
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


module BCD_6bit_test();
    
    reg [5:0] A_t;
    wire [7:0] B_t;
    
    BCD_6bit dut(
        .A(A_t),
        .B(B_t)
    );

    integer i;
    
    initial begin
        for (i=6'h0; i<=6'hf; i=i+1) begin
            A_t = i; #10;
        end
        $finish;
    end
    
    
endmodule
