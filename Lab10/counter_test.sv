`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2020 12:04:55 PM
// Design Name: 
// Module Name: counter_test
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


module counter_test();

    reg clk_t, rst_t;
    wire [1:0] count_t;
    
    counter #(.N(4)) dut(
        .clk(clk_t), .rst(rst_t),
        .count(count_t)
    );
    
    always begin
        clk_t = ~clk_t; #5;
    end
    
    initial begin
        clk_t = 0; rst_t = 1; #10;
        rst_t = 0; #10;
        //$finish;
    end

endmodule
