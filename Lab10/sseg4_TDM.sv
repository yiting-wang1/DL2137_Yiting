`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2020 01:04:35 PM
// Design Name: 
// Module Name: wrapper
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


module sseg4_TDM(
    input btnC,
    input clk,
    output [6:0] seg,
    output dp,
    output [3:0] an
    );
    
    wire [1:0] count_digit_sel;
    
    counter #(.N(2)) dut0(
        .clk(clk), .rst(btnC),
        .count(count_digit_sel)
    );
    
    sseg4 dut1(
        .data(16'h7f), .hex_dec(0), .sign(0), .digit_sel(count_digit_sel),
        .seg(seg), .dp(dp), .an(an)
    );
    
endmodule
