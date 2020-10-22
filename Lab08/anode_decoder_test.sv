`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ELC 2137
// Engineer: Yiting Wang
// Create Date: 10/15/2020
//////////////////////////////////////////////////////////////////////////////////


module anode_decoder_test();
    
    reg [1:0] in_t;
    wire [3:0] out_t;
    
    anode_decoder dut(
    .in(in_t),
    .out(out_t)
    );
    
    integer i;
    
    initial begin
        for (i=0; i<=8'h3; i=i+1) begin
            in_t = i;
            #10;
        end
        $finish; 
    end
    
endmodule
