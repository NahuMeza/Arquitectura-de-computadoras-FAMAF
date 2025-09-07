`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/03/2025 11:40:20 AM
// Design Name: 
// Module Name: maindec
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


module maindec(
    input logic [10:0] Op,
    output logic Reg2Loc,
    output logic ALUSrc,
    output logic MemtoReg,
    output logic RegWrite,
    output logic MemRead,
    output logic MemWrite,
    output logic Branch,
    output logic [1:0] ALUOp
    );
    always_comb begin
        casez(Op)
            11'b11111000010 : begin // LDUR
                Reg2Loc <= 1'b0; ALUSrc <= 1'b1; MemtoReg <= 1'b1; RegWrite <= 1'b1; 
                MemRead <= 1'b1; MemWrite <= 1'b0; Branch <= 1'b0; ALUOp <= 2'b00;
            end
            11'b11111000000 : begin // STUR
                Reg2Loc <= 1'b1; ALUSrc <= 1'b1; MemtoReg <= 1'b0; RegWrite <= 1'b0; 
                MemRead <= 1'b0; MemWrite <= 1'b1; Branch <= 1'b0; ALUOp <= 2'b00;
            end
            11'b10110100??? : begin // CBZ
                Reg2Loc <= 1'b1; ALUSrc <= 1'b0; MemtoReg <= 1'b0; RegWrite <= 1'b0; 
                MemRead <= 1'b0; MemWrite <= 1'b0; Branch <= 1'b1; ALUOp <= 2'b01;
            end
            11'b10001011000, 11'b11001011000, 11'b10001010000, 11'b10101010000: begin // R-format
                Reg2Loc <= 1'b0; ALUSrc <= 1'b0; MemtoReg <= 1'b0; RegWrite <= 1'b1; 
                MemRead <= 1'b0; MemWrite <= 1'b0; Branch <= 1'b0; ALUOp <= 2'b10;
            end   
            default:begin
                Reg2Loc <= 1'b0; ALUSrc <= 1'b0; MemtoReg <= 1'b0; RegWrite <= 1'b0; 
                MemRead <= 1'b0; MemWrite <= 1'b0; Branch <= 1'b0; ALUOp <= 2'b00;  
            end      
        endcase    
    end
endmodule











