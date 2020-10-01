`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ELC 2137
// Engineer: Yiting Wang
// Create Date: 09/30/2020
//////////////////////////////////////////////////////////////////////////////////


module addsub_test();
    reg [1:0] a_t, b_t;
    reg mode_t;
    wire cbout_t;
    wire [1:0] sum_t;
    
    addsub dut(
        .a(a_t), .b(b_t), .mode(mode_t),
        .cbout(cbout_t), .sum(sum_t)
    );
    
    initial begin
        a_t[1] = 0; a_t[0] = 0; b_t[1] = 0; b_t[0] = 0; mode_t = 0; #10;
        a_t[1] = 0; a_t[0] = 0; b_t[1] = 0; b_t[0] = 1; mode_t = 0; #10;
        a_t[1] = 0; a_t[0] = 0; b_t[1] = 1; b_t[0] = 0; mode_t = 0; #10;
        a_t[1] = 0; a_t[0] = 0; b_t[1] = 1; b_t[0] = 1; mode_t = 0; #10;
        a_t[1] = 0; a_t[0] = 1; b_t[1] = 0; b_t[0] = 1; mode_t = 0; #10;
        a_t[1] = 1; a_t[0] = 0; b_t[1] = 0; b_t[0] = 1; mode_t = 0; #10;
        a_t[1] = 1; a_t[0] = 0; b_t[1] = 0; b_t[0] = 0; mode_t = 0; #10;
        
        a_t[1] = 0; a_t[0] = 0; b_t[1] = 0; b_t[0] = 0; mode_t = 1; #10;
        a_t[1] = 0; a_t[0] = 0; b_t[1] = 0; b_t[0] = 1; mode_t = 1; #10;
        a_t[1] = 0; a_t[0] = 0; b_t[1] = 1; b_t[0] = 0; mode_t = 1; #10;
        a_t[1] = 0; a_t[0] = 0; b_t[1] = 1; b_t[0] = 1; mode_t = 1; #10;
        a_t[1] = 0; a_t[0] = 1; b_t[1] = 0; b_t[0] = 1; mode_t = 1; #10;
        a_t[1] = 1; a_t[0] = 0; b_t[1] = 0; b_t[0] = 1; mode_t = 1; #10;
        a_t[1] = 1; a_t[0] = 0; b_t[1] = 0; b_t[0] = 0; mode_t = 1; #10;
        
        $finish;
    end
    
endmodule
