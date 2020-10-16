`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ELC 2137
// Engineer: Yiting Wang
// Create Date: 10/08/2020
//////////////////////////////////////////////////////////////////////////////////


module sseg1_BCD(
    input [15:0] sw,
    input clk,//do nothing with it but borad needs it to run
    output [3:0] an,
    output dp,
    output [6:0] seg
    );
    
    wire tens_bcd11, ones_bcd11, hund_bcd11, thou_bcd11, out_mux;
    
    bcd11 my_bcd11_sseg1(
        .in(sw[10:0]),
        .tens(tens_bcd11), .ones(ones_bcd11), .hund(hund_bcd11), .thou(thou_bcd11)
    );
    
    mux2_4b my_mux_sseg1(
        .in1(tens_bcd11), .in0(ones_bcd11), .sel(sw[15]),
        .out(out_mux)
    );
    
    sseg_decoder my_sseg_decoder_sseg1(
        .num(out_mux),
        .sseg(seg)
    );
    
    assign dp = 1;
    assign an[3:2] = 2'b11;
    assign an[1] = ~sw[15];
    assign an[0] = sw[15];
    
endmodule
