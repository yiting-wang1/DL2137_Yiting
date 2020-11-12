`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2020 12:43:13 PM
// Design Name: 
// Module Name: calc_lab10
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


module calc_lab10(
    input btnU, btnD, clk, btnC,
    input [15:0] sw,
    output [15:0] led,
    output [6:0] seg,
    output [3:0] an,
    output dp
    );
    
    wire [15:0] led_out, show_out_data;
    wire sign_out;
    
    top_lab9 calc_unit(
        .btnU(btnU), .btnD(btnD), .sw(sw), .clk(clk), .btnC(btnC), 
        .led(led_out)
    );
    
    assign led = led_out;
    
    show_2c compliment (
        .Din(led_out[15:8]),
        .Dout(show_out_data), .sign(sign_out)
    );
    
    
    wire [1:0] count_digit_sel;
    
    counter #(.N(2)) dut0(
        .clk(clk), .rst(btnC),
        .count(count_digit_sel)
    );
    
    sseg4 disp_unit(
        .data(show_out_data), .hex_dec(sw[15]), .sign(sign_out), .digit_sel(count_digit_sel),
        .seg(seg), .dp(dp), .an(an)
    );
    
endmodule
