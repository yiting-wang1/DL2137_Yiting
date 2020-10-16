`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2020 12:53:30 PM
// Design Name: 
// Module Name: sseg4
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


module sseg4(
    input [16:0] data,
    input hex_dec,
    input sign,
    input [1:0] digit_sel,
    output reg [6:0] seg,
    output dp,
    output reg [3:0] an
    );
    
    wire [15:0] out_bcd11, out_mux2;
    wire [3:0] out_mux4;
    wire [6:0] out_sseg_decoder;
    
    BCD_11bit bcd11(
        .X(data[10:0]),
        .Y(out_bcd11)
    );
    
    mux2 dut1(
        .in1(data),
        .in0(out_bcd11),
        .sel(hex_dec),
        .out(out_mux2)
    );
    
    mux4 dut2(
        .in3(out_mux2[15:12]),
        .in2(out_mux2[11:8]),
        .in1(out_mux2[7:4]),
        .in0(out_mux2[3:0]),
        .sel(digit_sel),
        .out(out_mux4)
    );
    
    sseg_decoder dut3(
        .in(out_mux4),
        .out(out_sseg_decoder)
    );
    
    anode_decoder dut4(
        .in(digit_sel),
        .out(an)
    );
    
    wire sel_mux2;
    assign sel_mux2 = sign & ~an[3];
    
    mux2 dut5(
        .in1(7'b0111111),
        .in0(out_sseg_decoder),
        .sel(sel_mux2),
        .out(seg)
    );
    
    assign dp = 1;
    
endmodule
