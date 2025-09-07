`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/03/2025 03:06:49 PM
// Design Name: 
// Module Name: fetch_tb
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


module fetch_tb();
    logic PCSrc_F;
    logic clk;
    logic reset;
    logic [63:0] PCBranch_F;
    logic [63:0] imem_addr_F;
    
    fetch dut(PCSrc_F, clk,reset, PCBranch_F, imem_addr_F);
    
    always begin
        clk = 1; #5; clk = 0; #5;
    end
    
    initial begin
        reset = 1'b1; #50;
        reset = 1'b0;
    end
    
    initial begin
         PCBranch_F = 64'd100; PCSrc_F = 1'b0; #70;
         PCSrc_F = 1'b1; 
    end
    
endmodule
