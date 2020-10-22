`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ELC 2137
// Engineer: Yiting Wang
// Create Date: 10/15/2020
//////////////////////////////////////////////////////////////////////////////////


module mux2
    #(parameter BIT=4)
    (
    input [BIT-1:0] in1,
    input [BIT-1:0] in0,
    input sel,
    output [BIT-1:0] out
    );
    
    assign out = sel ? in1 : in0;
    
endmodule
