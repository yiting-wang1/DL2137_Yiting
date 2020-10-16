`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ELC 2137
// Engineer: Yiting Wang
// Create Date: 10/08/2020
//////////////////////////////////////////////////////////////////////////////////


module bcd6(
    input [5:0] Bin,
    output [3:0] ones,
    output [3:0] tens
    );
    
    wire [2:0] w1, w2;
    wire [6:1] Dout;
    
    add3 C1(
        .num({ 0, Bin[5:3] }),
        .mod({ Dout[6], w1 })
    );
    
    add3 C2(
        .num({ w1, Bin[2] }),
        .mod({ Dout[5], w2})
    );
            
    add3 C3(
        .num({ w2, Bin[1] }),
        .mod(Dout[4:1])
    );
    
    assign ones = {Dout[3:1], Bin[0]};
    assign tens = {0, Dout[6:4]};
    
endmodule
