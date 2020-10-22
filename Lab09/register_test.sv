`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2020 11:32:06 AM
// Design Name: 
// Module Name: register_test
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


module register_test();

    reg clk_t, rst_t, en_t;
    reg [3:0] D_t;
    wire [3:0] Q_t;
    
    register #(.N(4)) r(
        .clk(clk_t), .rst(rst_t), .en(en_t),
        .D(D_t), .Q(Q_t)
    );
    
    always begin
        clk_t = ~clk_t; #5;
    end
    
    initial begin
        clk_t = 0; en_t = 0; rst_t = 0; D_t = 4'h0; #7;
        rst_t = 1; #3;
        D_t = 4'ha; en_t = 1; rst_t = 0; #10;
        D_t = 4'h3; #2;
        en_t = 0; #5;
        en_t = 1; #3;
        D_t = 4'h0; #2;
        en_t = 0; #10;
        en_t = 1; #2;
        D_t = 4'h6; #11;
        $finish;
    end
    
endmodule
