`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/03/2025 02:41:46 PM
// Design Name: 
// Module Name: fetch
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


module fetch(
    input logic PCSrc_F,
    input logic clk,
    input logic reset,
    input logic [63:0] PCBranch_F,
    output logic [63:0] imem_addr_F
    );
    logic [63:0] addout;
    logic [63:0] muxout;
    
    assign addout = 63'b0;
    
    mux2 mux(addout, PCBranch_F, PCSrc_F, muxout);
    flopr pc(muxout, clk, reset, imem_addr_F);
    alu adder(imem_addr_F, 64'd4, 4'b0010, addout); 
  
endmodule
