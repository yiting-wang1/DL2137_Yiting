`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2020 01:27:47 PM
// Design Name: 
// Module Name: show_2c
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


module show_2c(
    input [7:0] Din,
    output [15:0] Dout,
    output sign
    );
    
    reg [7:0] inverse;
    assign sign = Din[7];
    
    always @*
    begin
        if (sign)
            inverse = ~Din + 1;
        else
            inverse = Din;
    end
    
    assign Dout = {8'b0, inverse};
    
endmodule
