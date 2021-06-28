`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/02/2021 01:43:19 AM
// Design Name: 
// Module Name: DFF
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


module DFF(
    input Clk,
    input Clr,
    input D,
    output reg Q,
    output reg Qbar
    );
    
    always @(posedge Clk, negedge Clr)
    
    if (Clr==0) begin
    Q<=0;
    Qbar<=1;
    end
    
    else begin 
    Q<=D;
    Qbar=~D;
    end
    
    
endmodule
