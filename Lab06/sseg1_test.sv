`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ELC 2137
// Engineer: Yiting Wang
// Create Date: 10/01/2020
//////////////////////////////////////////////////////////////////////////////////


module sseg1_test();
    
    reg [15:0] sw;
    wire [1:0] seg_un_t;
    wire [6:0] sseg_t;
    wire dp_t, seg_L_t, seg_R_t;
    
    sseg1 dut(
    .A(sw[7:4]), .B(sw[3:0]), .sel(sw[15]),
    .seg_un(seg_un_t), .dp(dp_t), .sseg(sseg_t), .seg_L(seg_L_t), .seg_R(seg_R_t)
    );
     
    
    initial begin
        sw = 16'h0000; #10;
        // test case 1 for 0
        sw[7:0] = 7'b1000000;
        sw[15] = 1'b0; #10;
        sw[15] = 1'b1; #10;
        // test case 2 for 1
        sw[7:0] = 7'b1111001;
        sw[15] = 1'b0; #10;
        sw[15] = 1'b1; #10;
        // test case 3 for 2
        sw[7:0] = 7'b0100100;
        sw[15] = 1'b0; #10;
        sw[15] = 1'b1; #10;
        // test case 4 for 3
        sw[7:0] = 7'b0110000;
        sw[15] = 1'b0; #10;
        sw[15] = 1'b1; #10;
        // test case 5 for 4
        sw[7:0] = 7'b0011001;
        sw[15] = 1'b0; #10;
        sw[15] = 1'b1; #10;
        // test case 6 for 5
        sw[7:0] = 7'b0010010;
        sw[15] = 1'b0; #10;
        sw[15] = 1'b1; #10;
        // test case 7 for 6
        sw[7:0] = 7'b0000010;
        sw[15] = 1'b0; #10;
        sw[15] = 1'b1; #10;
        // test case 8 for 7
        sw[7:0] = 7'b1111000;
        sw[15] = 1'b0; #10;
        sw[15] = 1'b1; #10;
        // test case 9 for 8
        sw[7:0] = 7'b0000000;
        sw[15] = 1'b0; #10;
        sw[15] = 1'b1; #10;
        // test case 10 for 9
        sw[7:0] = 7'b0011000;
        sw[15] = 1'b0; #10;
        sw[15] = 1'b1; #10;
        // test case 11 for a
        sw[7:0] = 7'b0001000;
        sw[15] = 1'b0; #10;
        sw[15] = 1'b1; #10;
        // test case 12 for b
        sw[7:0] = 7'b0000011;
        sw[15] = 1'b0; #10;
        sw[15] = 1'b1; #10;
        // test case 13 for c
        sw[7:0] = 7'b1000110;
        sw[15] = 1'b0; #10;
        sw[15] = 1'b1; #10;
        // test case 14 for d
        sw[7:0] = 7'b0100001;
        sw[15] = 1'b0; #10;
        sw[15] = 1'b1; #10;
        // test case 15 for e
        sw[7:0] = 7'b0000110;
        sw[15] = 1'b0; #10;
        sw[15] = 1'b1; #10;
        // test case 16 for f
        sw[7:0] = 7'b0001110;
        sw[15] = 1'b0; #10;
        sw[15] = 1'b1; #10;
        $finish;
    end
    
endmodule
