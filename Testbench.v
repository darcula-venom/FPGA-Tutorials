`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/02/2021 01:49:10 AM
// Design Name: 
// Module Name: Testbench
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


module Testbench(

    );
    
    reg D,Clr, Clk;
    wire Q, Qbar;
    
    DFF U(D, Clk, Clr, Q, Qbar);
    
    always #100 Clk=~Clk;
    
    
    initial begin
    D = 1'b0;
    Clk = 1'b0;
    Clr = 1'b1;
    
    #100;
    Clr = 1'b0;
    #100;
    Clr = 1'b1;
    
    forever #50 D=~D;
    end  
    
    
    
endmodule
