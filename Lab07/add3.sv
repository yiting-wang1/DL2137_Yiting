`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ELC 2137
// Engineer: Yiting Wang
// Create Date: 10/08/2020
//////////////////////////////////////////////////////////////////////////////////


module add3(
    input [3:0] num,
    output reg [3:0] mod
    );
    
    always @*
        if (num > 4'h4)
            mod = num + 4'h3;
        else
            mod = num;
    
endmodule
