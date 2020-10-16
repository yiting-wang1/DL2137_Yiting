`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2020 12:38:40 PM
// Design Name: 
// Module Name: anode_decoder_test
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
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
