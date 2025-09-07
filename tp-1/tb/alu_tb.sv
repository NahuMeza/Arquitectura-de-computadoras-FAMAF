`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/31/2025 04:16:18 PM
// Design Name: 
// Module Name: alu_tb
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


module alu_tb();
    logic [63:0] a;
    logic [63:0] b;
    logic [3:0] ALUControl;
    logic [63:0] result;
    logic zero;
    
    alu dut(a,b,ALUControl,result,zero);
    
    initial begin
        a = 64'd1; b = 64'd1; ALUControl = 4'b0000; #10;
        a = {64{1'b1}}; b = {64{1'b1}}; ALUControl = 4'b0000; #10;
        a = 64'd1; b = {64{1'b1}}; ALUControl = 4'b0000; #10;
         
        a = 64'd1; b = 64'd1; ALUControl = 4'b0001; #10;
        a = {64{1'b1}}; b = {64{1'b1}}; ALUControl = 4'b0001; #10; 
        a = 64'd1; b = {64{1'b1}}; ALUControl = 4'b0001; #10;
         
        a = 64'd1; b = 64'd1; ALUControl = 4'b0010; #10;
        a = {64{1'b1}}; b = {64{1'b1}}; ALUControl = 4'b0010; #10;
        a = 64'd1; b = {64{1'b1}}; ALUControl = 4'b0010; #10;
        
        a = 64'd1; b = 64'd1; ALUControl = 4'b0110; #10; 
        a = {64{1'b1}}; b = {64{1'b1}}; ALUControl = 4'b0110; #10;
        a = 64'd1; b = {64{1'b1}}; ALUControl = 4'b0110; #10;
        
        a = 64'd1; b = 64'd1; ALUControl = 4'b0111; #10;
        a = {64{1'b1}}; b = {64{1'b1}}; ALUControl = 4'b0111; #10;
        a = 64'd1; b = {64{1'b1}}; ALUControl = 4'b0111; #10;
        
        // Overflow
        a = {1'b0,{63{1'b1}}}; b = {1'b0,{63{1'b1}}}; ALUControl = 4'b0010; #10;
        a = {1'b0,{63{1'b1}}}; b = 64'b1; ALUControl = 4'b0010; #10; 
    end
endmodule








