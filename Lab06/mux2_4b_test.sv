`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ELC 2137
// Engineer: Yiting Wang
// Create Date: 10/01/2020
//////////////////////////////////////////////////////////////////////////////////


module mux2_4b_test();
    
    reg [3:0] in1_t, in0_t;
    reg sel_t;
    wire [3:0] out_t;
    
    mux2_4b dut(
        .in1(in1_t), .in0(in0_t), .sel(sel_t),
        .out(out_t)
    );
    
    initial begin
        in1_t = 4'b1111; in0_t = 4'b0000; sel_t = 0; #10;
        sel_t = 1; #10;
        in1_t = 4'b0100; in0_t = 4'b1101; sel_t = 0; #10;
        sel_t = 1; #10;
        $finish;
    end
    
endmodule//mux2_4b_test
