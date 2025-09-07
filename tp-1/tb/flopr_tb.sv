`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/29/2025 11:16:48 AM
// Design Name: 
// Module Name: flopr_tb
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
`timescale 1ns / 100ps
`define WIDTH 64
module flopr_tb ();
    logic[`WIDTH-1:0] d;
    logic clk, reset;
    logic[`WIDTH-1:0] q;
    flopr #(64) dut(d, clk, reset, q);
    always begin
        clk = 1; #5; clk = 0; #5;
    end
    initial begin
        d = 64'd13; reset = 1; #10;
        d = 64'd69; #10;
        d = 64'd8; #10;
        d = 64'd11; #10;
        d = 64'd5; #10;
        
        d = 64'd13; reset = 0; #10;
        d = 64'd69; #10;
        d = 64'd8; #10;
        d = 64'd11; #10;
        d = 64'd5; #10;
    end
endmodule
