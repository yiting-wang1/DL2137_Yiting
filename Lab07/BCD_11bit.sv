`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2020 01:35:59 PM
// Design Name: 
// Module Name: BCD_11bit
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


module BCD_11bit(
    input [10:0] X,
    output [15:0] Y
    );
    
    wire [3:0] w1, w2, w3, w4, wa, w5, wb, w6, wc, w7, wd, wA, w8, we, wB;
    
    add3 C1(
        .num({ 0, X[10:8] }),
        .modnum({ w1 })
    );
    
    add3 C2(
        .num({ w1[2:0], X[7] }),
        .modnum({ w2 })
    );
            
    add3 C3(
        .num({ w2[2:0], X[6] }),
        .modnum({ w3 })
    );
            
    add3 C4(
        .num({ w3[2:0], X[5] }),
        .modnum({ w4 })
    );
            
    add3 Ca(
        .num({ 0, w1[3], w2[3], w3[3] }),
        .modnum({ wa })
    );
    
    add3 C5(
        .num({ w4[2:0], X[4] }),
        .modnum({ w5 })
    );
    
    add3 Cb(
        .num({ wa[2:0], w4[3] }),
        .modnum({ wb })
    );
    
    add3 C6(
        .num({ w5[2:0], X[3] }),
        .modnum({ w6 })
    );
    
    add3 Cc(
        .num({ wb[2:0], w5[3] }),
        .modnum({ wc })
    );
    
    add3 C7(
        .num({ w6[2:0], X[2] }),
        .modnum({ w7 })
    );
    
    add3 Cd(
        .num({ wc[2:0], w6[3] }),
        .modnum({ wd })
    );
    
    add3 CA(
        .num({ 0, wa[3], wb[3] , wc[3] }),
        .modnum({ wA })
    );
    
    add3 C8(
        .num({ w7[2:0], X[1] }),
        .modnum({ Y[4:1] })
    );
    
    add3 Ce(
        .num({ wd[2:0], w7[3] }),
        .modnum({ Y[8:5] })
    );
    
    add3 CB(
        .num({ wA[2:0], wd[3] }),
        .modnum({ Y[12:9] })
    );
    
    assign Y[0] = X[0];
    assign Y[15:13] = 3'h0;
    
endmodule
