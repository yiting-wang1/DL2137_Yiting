`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ELC 2137
// Engineer: Yiting Wang
// Create Date: 10/15/2020
//////////////////////////////////////////////////////////////////////////////////


module sseg4(
    input [15:0] data,
    input hex_dec,
    input sign,
    input [1:0] digit_sel,
    input clk,
    
    output reg [6:0] seg,
    output dp,
    output reg [3:0] an
    );
    
    wire [15:0] out_bcd11, out_mux2;
    wire [3:0] out_mux4;
    wire [6:0] out_sseg_decoder;
    
    bcd11 dut0(
        .in(data[10:0]),
        .ones(out_bcd11[3:0]), .tens(out_bcd11[7:4]), .hund(out_bcd11[11:8]), .thou(out_bcd11[15:12])
    );
    
    mux2 dut1(
        .in1(data), .in0(out_bcd11), .sel(hex_dec),
        .out(out_mux2)
    );
    
    mux4 dut2(
        .in3(out_mux2[15:12]), .in2(out_mux2[11:8]), .in1(out_mux2[7:4]), .in0(out_mux2[3:0]), .sel(digit_sel),
        .out(out_mux4)
    );
    
    sseg_decoder dut3(
        .num(out_mux4),
        .sseg(out_sseg_decoder)
    );
    
    
    
    anode_decoder dut4(
        .in(digit_sel),
        .out(an)
    );
    
    wire nan;
    assign nan = ~an[3];
    
    wire sel_mux2;
    assign sel_mux2 = sign & nan;
    
    mux2 dut5(
        .in1(7'b0111111), .in0(out_sseg_decoder), .sel(sel_mux2),
        .out(seg)
    );
    
    assign dp = 1;
    assign clk = 1;
    
endmodule
