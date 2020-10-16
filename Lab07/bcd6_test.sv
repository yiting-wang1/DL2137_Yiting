`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ELC 2137
// Engineer: Yiting Wang
// Create Date: 10/08/2020
//////////////////////////////////////////////////////////////////////////////////


module bcd6_test();
    
    reg [5:0] Bin_t;
    wire [3:0] ones_t, tens_t;
    
    bcd6 dut_bcd6(
    .Bin(Bin_t),
    .ones(ones_t), .tens(tens_t)
    );
    
    integer i;
    
    initial begin
        for(i=6'h0; i<=6'h3f; i=i+1) begin
            Bin_t = i; #10;
        end
        $finish;
    end
        
endmodule
