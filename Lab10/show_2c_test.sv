`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2020 11:31:18 AM
// Design Name: 
// Module Name: show_2c_test
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


module show_2c_test();

reg [7:0] Din_test;
wire [15:0] Dout_test;
wire sign_test;
    
show_2c dut(
    .Din(Din_test),
    .Dout(Dout_test), .sign(sign_test)
    );

initial begin
    Din_test = 8'h3a; #10;
    Din_test = 8'hb1; #10;
    Din_test = 8'h9e; #10;
    $finish;
end

endmodule
