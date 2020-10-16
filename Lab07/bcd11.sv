`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ELC 2137
// Engineer: Yiting Wang
// Create Date: 10/08/2020
//////////////////////////////////////////////////////////////////////////////////


module bcd11(
    input [10:0] in,
    output [3:0] ones,
    output [3:0] tens,
    output [3:0] hund,
    output [3:0] thou
    );
    
    wire [12:1] Y;
    wire [3:0] w1, w2, w3, w4, wa, w5, wb, w6, wc, w7, wd, wA;
    
    add3 C1_bcd11(
        .num({ 0, in[10:8] }),
        .mod(w1)
    );
    
    add3 C2_bcd11(
        .num({ w1[2:0], in[7] }),
        .mod(w2)
    );
            
    add3 C3_bcd11(
        .num({ w2[2:0], in[6] }),
        .mod(w3)
    );
            
    add3 C4_bcd11(
        .num({ w3[2:0], in[5] }),
        .mod(w4)
    );
    
    add3 C5_bcd11(
        .num({ w4[2:0], in[4] }),
        .mod(w5)
    );
    
    add3 C6_bcd11(
        .num({ w5[2:0], in[3] }),
        .mod(w6)
    );
    
    add3 C7_bcd11(
        .num({ w6[2:0], in[2] }),
        .mod(w7)
    );
    
    add3 C8_bcd11(
        .num({ w7[2:0], in[1] }),
        .mod(Y[4:1])
    );
            
    add3 Ca_bcd11(
        .num({ 0, w1[3], w2[3], w3[3] }),
        .mod(wa)
    );
    
    add3 Cb_bcd11(
        .num({ wa[2:0], w4[3] }),
        .mod(wb)
    );
    
    add3 Cc_bcd11(
        .num({ wb[2:0], w5[3] }),
        .mod(wc)
    );
    
    add3 Cd_bcd11(
        .num({ wc[2:0], w6[3] }),
        .mod(wd)
    );
    
    add3 Ce_bcd11(
        .num({ wd[2:0], w7[3] }),
        .mod(Y[8:5])
    );
    
    add3 CA_bcd11(
        .num({ 0, wa[3], wb[3] , wc[3] }),
        .mod(wA)
    );
    
    add3 CB_bcd11(
        .num({ wA[2:0], wd[3] }),
        .mod(Y[12:9])
    );
    
    assign ones = {Y[3:1], in[0]};
    assign tens = Y[7:4];
    assign hund = Y[11:8];
    assign thou = {2'b00, wA[3],Y[12]};
    
endmodule

