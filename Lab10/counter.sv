`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2020 11:49:35 AM
// Design Name: 
// Module Name: counter
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


module counter #(parameter N=2)
    (
    input clk, rst,
    output [1:0] count
    );
    reg [N-1:0] Q_reg, Q_next;
    
    
    always @(posedge clk, posedge rst)
    begin
        if (rst)
            Q_reg <= 0;
        else
            Q_reg <= Q_next;
    end
    
    
    always @*
    begin 
        Q_next = Q_reg + 1;
    end
    
    
    assign count = Q_reg[N-1:N-2];
    
endmodule
