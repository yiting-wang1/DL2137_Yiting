`timescale 1s / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ELC 2137
// Engineer: Yiting Wang
// Create Date: 10/08/2020
//////////////////////////////////////////////////////////////////////////////////


module bcd11_test();
    
    reg [10:0] in_t;
    wire [3:0] ones_t, tens_t, hund_t, thou_t;
    
    bcd11 dut_bcd11(
        .in(in_t),
        .ones(ones_t), .tens(tens_t), .hund(hund_t), .thou(thou_t)
    );

    integer i;
    
    initial begin
        for (i=11'h0; i<=11'h7ff; i=i+1) begin
            in_t = i; #10;
        end
    end
    
endmodule
