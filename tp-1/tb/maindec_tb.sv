`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/03/2025 12:01:58 PM
// Design Name: 
// Module Name: maindec_tb
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


module maindec_tb();
    logic [10:0] Op;
    logic Reg2Loc, ALUSrc, MemtoReg, RegWrite,
    MemRead, MemWrite, Branch;
    logic [1:0] ALUOp;
    
    maindec dut(Op,Reg2Loc, ALUSrc, MemtoReg, RegWrite,MemRead, MemWrite, Branch, ALUOp);
    initial begin 
        Op = 11'b11111000010; #10;
        Op = 11'b11111000000; #10;
        Op = 11'b10110100111; #10;
        Op = 11'b10001011000; #10;
        Op = 11'b11001011000; #10;
        Op = 11'b10001010000; #10;
        Op = 11'b10101010000; #10;
        Op = 11'b1; #10;
    end
endmodule
