`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ELC 2137
// Engineer: Yiting Wang
// Create Date: 09/24/2020
//////////////////////////////////////////////////////////////////////////////////


module halfadder_test();
    
    reg a1, b1;
    wire c1, s1;
    
    
    halfadder dut(
        .a(a1),.b(b1),
        .c(c1),.s(s1)
    );
      
    initial begin
        a1=0; b1=0; #10;
        a1=0; b1=1; #10;
        a1=1; b1=0; #10;
        a1=1; b1=1; #10;
        $finish;
    end

endmodule //halfadder_test
