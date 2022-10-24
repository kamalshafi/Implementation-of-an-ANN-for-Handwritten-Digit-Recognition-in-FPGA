`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/29/2021 12:56:38 AM
// Design Name: 
// Module Name: acc_1
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


module acc_1(
input [19:0]mac_in,
input[7:0]b,
input clk,
input reset,
output [21:0]acc_out
    );
    
    reg[21:0]mux_out,acc_reg;
    reg[21:0]acc_out; 
    wire [21:0]b_ext,sum;
    wire en,sel;
    
     assign b_ext={{14{b[7]}},b}; //Sign Extension ob b
     
    //instantiate adder and FSM control
    adder22 a1(mac_in, mux_out,sum);
    Acc_CRT c1(clk,reset,sel,en);
    
    always @(posedge clk)//Updating result
    begin
    if(en)
    acc_out<=sum;
    end
    
    always@(posedge clk)
    acc_reg<=sum;
    
    always@(*)//selecting mux output
    begin
    if(sel)
    mux_out=b_ext;
    else
    mux_out=acc_reg;
    end
    
endmodule
