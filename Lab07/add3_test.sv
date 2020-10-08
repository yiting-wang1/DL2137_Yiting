`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2020 12:22:18 PM
// Design Name: 
// Module Name: add3_test
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


module add3_test();

    reg [3:0] num_t;
    wire [3:0] modnum_t;
    
    add3 dut(
        .num(num_t),
        .modnum(modnum_t)
    );
    
    
    integer i;
    
    initial begin
        for (i=6'h0; i<=6'hf; i=i+1) begin
            num_t = i; #10;
        end
        $finish;
    end

endmodule
