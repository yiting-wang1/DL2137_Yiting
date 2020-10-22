`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ELC 2137
// Engineer: Yiting Wang
// Create Date: 10/15/2020
//////////////////////////////////////////////////////////////////////////////////


module sseg4_manual(
    input [15:0] sw,
    input clk,
    
    output [6:0] seg,
    output dp,
    output [3:0] an
    );
    
    sseg4 my_sseg(
        .data({ 4'b0000, sw[11:0] }), .hex_dec(sw[15]), .sign(sw[14]), .digit_sel(sw[13:12]),
        .seg(seg), .dp(dp), .an(an)
    );
    
    assign clk = 1;
    
endmodule
