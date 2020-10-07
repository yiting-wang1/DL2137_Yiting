`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ELC 2137
// Engineer: Yiting Wang
// Create Date: 10/01/2020
//////////////////////////////////////////////////////////////////////////////////


module mux2_4b(
    input [3:0] in1,
    input [3:0] in0,
    input sel,
    output [3:0] out
    );
    
    assign out = sel ? in1 : in0; //sel is the “select” line that chooses between in0 (when sel=0) and in1(when sel=1).  
    
endmodule //mux2_4b
