`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ELC 2137
// Engineer: Yiting Wang
// Create Date: 10/08/2020
//////////////////////////////////////////////////////////////////////////////////


module add3_test();

    reg [3:0] num_t;
    wire [3:0] mod_t;
    
    add3 dut(
        .num(num_t),
        .mod(mod_t)
    );
    
    
    integer i;
    
    initial begin
        for (i=4'h0; i<=4'hf; i=i+1) begin
            num_t = i; #10;
        end
        $finish;
    end

endmodule
