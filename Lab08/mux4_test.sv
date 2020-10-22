`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ELC 2137
// Engineer: Yiting Wang
// Create Date: 10/15/2020
//////////////////////////////////////////////////////////////////////////////////


module mux4_test();
    localparam BIT=4;
    reg [BIT-1:0] in3_t, in2_t, in1_t, in0_t;
    reg [1:0] sel_t;
    wire [BIT-1:0] out_t;
    
    mux4 dut(
    .in3(in3_t), .in2(in2_t), .in1(in1_t), .in0(in0_t),
    .sel(sel_t),
    .out(out_t)
    );
    
    integer i;
    
    initial begin
        in3_t = 16'h1111; in2_t = 16'h0000; in1_t = 16'h1013; in0_t = 16'h0105;
        for (i=0; i<=8'h3; i=i+1) begin
            sel_t = i;
            #10;
        end
        $finish; 
    end
    
endmodule
