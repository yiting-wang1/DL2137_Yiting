`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ELC 2137
// Engineer: Yiting Wang
// Create Date: 10/01/2020
//////////////////////////////////////////////////////////////////////////////////


module sseg1_wrapper(
    input [15:0] sw,
    input clk,//do nothing with it but borad needs it to run
    output [3:0] an,
    output dp,
    output [6:0] seg
    );
    
    sseg1 my_sseg1(
        .A(sw[7:4]),
        .B(sw[3:0]),
        .sel(sw[15]),
        .seg_un(an[3:2]),
        .dp(dp),
        .sseg(seg),
        .seg_L(an[1]),
        .seg_R(an[0])
    );
    
    
endmodule
