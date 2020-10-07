`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ELC 2137
// Engineer: Yiting Wang
// Create Date: 10/01/2020
//////////////////////////////////////////////////////////////////////////////////


module sseg_decoder_test();
    
    reg [3:0] num_t;
    wire [6:0] sseg_t;
    
    sseg_decoder dut(
        .num(num_t),
        .sseg(sseg_t)
    );
    
    integer i;
    
    initial begin//finsh is the second, so need begin
        for (i=0; i<=8'hF; i=i+1) begin
            num_t = i;
            #10;
        end
        $finish; 
    end
    
endmodule//sseg_decoder_test
