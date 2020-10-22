`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ELC 2137
// Engineer: Yiting Wang
// Create Date: 10/15/2020
//////////////////////////////////////////////////////////////////////////////////


module mux2_test();
localparam BIT=4;
    reg [BIT-1:0] in1_t, in0_t;
    reg sel_t;
    wire [BIT-1:0] out_t;

    mux2 dut(
    .in1(in1_t),
    .in0(in0_t),
    .sel(sel_t),
    .out(out_t)
    );
    
    initial begin
        in1_t = 16'h1111; in0_t = 16'h0000; sel_t = 0; #10;
        sel_t = 1; #10;
        in1_t = 16'h1013; in0_t = 16'h0105; sel_t = 0; #10;
        sel_t = 1; #10;
        $finish;
    end
        
endmodule