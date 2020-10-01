`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ELC 2137
// Engineer: Yiting Wang
// Create Date: 09/30/2020
//////////////////////////////////////////////////////////////////////////////////


module addsub(
    input [1:0] a, b,
    input mode,
    output [1:0] sum,
    output cbout
    );
    
    wire c1, c2;
    wire [1:0] b_n;
    
    assign b_n[0] = mode ^ b[0];
    assign b_n[1] = mode ^ b[1];
    
    fulladder dut1(
        .ain(a[0]), .bin(b_n[0]), .cin(mode),
        .cout(c1), .sout(sum[0])
    );
    
    fulladder dut2(
        .ain(a[1]), .bin(b_n[1]), .cin(c1),
        .cout(c2), .sout(sum[1])
    );
    
    assign cbout = c2;
    
endmodule //addsub



