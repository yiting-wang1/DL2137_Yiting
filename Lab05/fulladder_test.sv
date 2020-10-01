`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ELC 2137
// Engineer: Yiting Wang
// Create Date: 09/24/2020
//////////////////////////////////////////////////////////////////////////////////



module fulladder_test( );

    reg a_t, b_t, cin_t;
    wire cout_t, sout_t;

    fulladder dut(
        .ain(a_t), .bin(b_t), .cin(cin_t),
        .sout(sout_t), .cout(cout_t)
    );

    initial begin
        a_t=0; b_t=0; cin_t=0; #10;
        a_t=0; b_t=1; cin_t=0; #10;
        a_t=1; b_t=0; cin_t=0; #10;
        a_t=1; b_t=1; cin_t=0; #10;
        
        a_t=0; b_t=0; cin_t=1; #10;
        a_t=0; b_t=1; cin_t=1; #10;
        a_t=1; b_t=0; cin_t=1; #10;
        a_t=1; b_t=1; cin_t=1; #10;
        $finish;
    end

endmodule
