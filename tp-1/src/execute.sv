`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/03/2025 04:14:04 PM
// Design Name: 
// Module Name: execute
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


module execute(
    input logic AluSrc,
    input logic [3:0] AluControl,
    input logic [63:0] PC_E,
    input logic [63:0] signlmm_E,
    input logic [63:0] readData1_E,
    input logic [63:0] readData2_E,
    output logic [63:0] PCBranch_E,
    output logic [63:0] aluResult_E,
    output logic [63:0] writeData_E,
    output logic zero_E
    );
    
    logic [63:0] muxout;
    logic [63:0] sl2out;
    
    mux2 mux(readData2_E, signlmm_E, AluSrc, muxout);
    alu alu_main(readData1_E, muxout, AluControl, aluResult_E, zero_E);
    sl2 shift2(signlmm_E, sl2out);
    alu adder(PC_E, sl2out, 4'b0010, PCBranch_E);

    assign writeData_E = readData2_E;
    
endmodule
