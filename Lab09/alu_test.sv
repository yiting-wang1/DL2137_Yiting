`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2020 12:13:02 PM
// Design Name: 
// Module Name: alu_test
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


module alu_test();

    reg [3:0] in1_t, in0_t, op_t;
    wire [3:0] out_t;
    
    alu #(.N(4)) a (
        .in1(in1_t), .in0(in0_t), .op(op_t),
        .out(out_t)
    );
    
    initial begin
        in1_t = 4'ha; in0_t = 4'hd; op_t = 4'h0; #10;
        op_t = 4'h1; #10;
        op_t = 4'h2; #10;
        op_t = 4'h3; #10;
        op_t = 4'h4; #10;
        op_t = 4'h5; #10;
        $finish;
    end

endmodule
