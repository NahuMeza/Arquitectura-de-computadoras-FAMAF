`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/03/2025 10:33:47 AM
// Design Name: 
// Module Name: regfile_tb
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


module regfile_tb();
    logic [4:0] ra1, ra2, wa3;
    logic [63:0] wd3, rd1, rd2;
    logic we3,clk;
    
    regfile dut(ra1,ra2,wa3,wd3,we3,clk,rd1,rd2);
    
    always begin
        clk = 1; #5; clk = 0; #5;
    end

    initial begin 
        for(logic [4:0] i = 5'd0; i < 31; ++i) begin
            // 'i' can not be 32 because it will reset to 0, making an infinit loop 
            ra1 = i; ra2 = i; #10;
        end
        ra1 = 5'd31; ra2 = 5'd31; #10;
        
        // write
        ra1 = 5'd6;
        we3 = 1'b1; 
        wa3 = 5'd6; wd3 = 64'd69; #5;
        // negedge values are not displayed
        wd3 = 64'd70; #5; 
        wd3 = 64'd71; #10;
        // X31 can not change
        ra1 = 5'd31; wa3 = 5'd31; wd3 = 64'd75; #10
        // we3 = 0, register do not change
        wa3 = 5'd6; ra1= 5'd6;
        we3 = 1'b0; wd3 = 64'd72; #10;
        
        
        
    end
    
endmodule
