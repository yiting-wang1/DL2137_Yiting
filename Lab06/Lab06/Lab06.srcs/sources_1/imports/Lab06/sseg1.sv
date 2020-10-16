`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ELC 2137
// Engineer: Yiting Wang
// Create Date: 10/01/2020
//////////////////////////////////////////////////////////////////////////////////


module sseg1(
    input [3:0] A,
    input [3:0] B,
    input sel,
    output [1:0] seg_an,
    output dp,
    output [6:0] sseg,
    output seg_L,
    output seg_R
    );
    
    wire [3:0] out_mux;
     
    mux2_4b dut0(
        .in1(A), .in0(B), .sel(sel),
        .out(out_mux)
    );
    
    sseg_decoder dut1(
        .num(out_mux),
        .sseg(sseg)
    );
    
    assign seg_an = 2'b11;
    assign dp = 1;
    assign seg_L = ~sel;
    assign seg_R = sel;
    
endmodule
