`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2020 12:40:57 PM
// Design Name: 
// Module Name: top_lab9
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


module top_lab9(
    input btnU,
    input btnD,
    input [11:0] sw,
    input clk,
    input btnC,
    output [15:0] led
    );
    
    wire [7:0] Q_reg1, out_alu;
    
    register #(.N(8)) reg1(
        .D(sw[7:0]), .en(btnD), .clk(clk), .rst(btnC), 
        .Q(Q_reg1)
    );
    
    alu #(.N(8)) alu0 (
        .in1(Q_reg1), .in0(sw[7:0]), .op(sw[11:8]),
        .out(out_alu)
    );
    
    register #(.N(8)) reg2(
        .D(out_alu), .en(btnU), .clk(clk), .rst(btnC), 
        .Q(led[15:8])
    );
    
    assign led[7:0] = Q_reg1;
    
endmodule
