`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ELC 2137
// Engineer: Yiting Wang
// Create Date: 09/24/2020
//////////////////////////////////////////////////////////////////////////////////


module fulladder(
    input ain,
    input bin,
    input cin,
    output cout,
    output sout
    );
    
    wire c1, c2, s1;
    
    halfadder dut1(
        .a(ain), .b(bin),
        .c(c1), .s(s1)
    );
    
    halfadder dut2(
        .a(cin), .b(s1),
        .c(c2), .s(sout)
    );
    
    assign cout = c1 ^ c2;
    
endmodule// fulladder
