`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/31/2025 02:47:02 PM
// Design Name: 
// Module Name: signext_tb
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


module signext_tb();
    logic[31:0] a;
    logic[63:0] y;
    
    signext dut(a,y);
    initial begin
        a = {11'b11111000010, 9'b1, 12'(1'b1)}; #10; // LDUR POSITIVO
        a = {11'b11111000010, 9'b111111111, 12'(1'b1)}; #10; // LDUR NEGATIVO
        a = {11'b11111000000, 9'b1, 12'(1'b1)}; #10; // STUR POSITIVO
        a = {11'b11111000000, 9'b111111111, 12'(1'b1)}; #10; // STUR NEGATIVO
        a = {8'b10110100, 19'b1, 5'(1'b1)}; #10; // CBZ POSITIVO
        a = {8'b10110100, {19{1'b1}}, 5'(1'b1)}; #10; // CBZ POSITIVO
        a = {32{1'b1}}; // RANDOM
    end
endmodule
