`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/03/2025 09:42:58 AM
// Design Name: 
// Module Name: imem_tb
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


module imem_tb();
    logic[5:0] addr;
    logic[63:0] q;
    
    imem #(32) dut(addr, q);
    
    initial begin
        for(logic[5:0] i = 0; i < 50; i++) begin
            addr = i; #10;
        end
     end
     
endmodule
