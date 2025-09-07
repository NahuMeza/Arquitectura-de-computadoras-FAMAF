`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/03/2025 04:24:18 PM
// Design Name: 
// Module Name: execute_tb
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


module execute_tb();
    logic AluSrc;
    logic [3:0] AluControl;
    logic [63:0] PC_E;
    logic [63:0] signlmm_E;
    logic [63:0] readData1_E;
    logic [63:0] readData2_E;
    logic [63:0] PCBranch_E;
    logic [63:0] aluResult_E;
    logic [63:0] writeData_E;
    logic zero_E;

    execute dut(AluSrc, AluControl, PC_E, 
    signlmm_E, readData1_E, readData2_E, 
    PCBranch_E, aluResult_E, writeData_E, zero_E);

    initial begin
        AluControl = 4'b0010;
        AluSrc = 1'b0;
        readData1_E = 64'd16;
        readData2_E = 64'd24;
        signlmm_E = 64'd4;
        PC_E = 64'd0; #10;
        AluSrc = 1'b1; #20;
    end

endmodule
