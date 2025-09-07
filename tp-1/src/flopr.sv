`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/29/2025 10:42:53 AM
// Design Name: 
// Module Name: flopr
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


module flopr #(parameter N = 64)
(
    input logic [N-1:0] d,
    input logic clk,
    input logic reset,
    output logic [N-1:0] q);
    always_ff @(posedge clk, posedge reset)
        if (reset) q <= N'('b0); 
        else q <= d;
        
endmodule



