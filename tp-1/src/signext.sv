`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/31/2025 02:13:33 PM
// Design Name: 
// Module Name: signext
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


module signext(
    input logic [31:0] a,
    output logic [63:0] y
    );
    always_comb 
        casez(a[31:21])
            11'b11111000010, 11'b11111000000: y = {{55{a[20]}}, a[20:12]};
            11'b10110100???: y = {{45{a[23]}}, a[23:5]};
            default: y = 64'b0;
        endcase
endmodule
