`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/29/2021 02:36:35 AM
// Design Name: 
// Module Name: Acc_CRT
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


module Acc_CRT(
input clk,
input reset,
output sel,
output en
    );
    
    reg [1:0]curr_state, nxt_state;
    parameter s0= 2'b00;
    parameter s1= 2'b01;
    parameter s2= 2'b10;
    parameter s3= 2'b11;
    
    always@(posedge clk) //updating current state
    begin
    if(reset)
    curr_state=s0;
    else
    curr_state=nxt_state;
    end
    
    always@(curr_state) //state transition
    begin
    case(curr_state)
    s0:nxt_state=s1;
    s1:nxt_state=s2;
    s2:nxt_state=s3;
    s3:nxt_state=s0;
    endcase 
    end
    
    assign sel=(curr_state==s0)?1'b1:1'b0;
    assign en=(curr_state==s3)?1'b1:1'b0;
    
endmodule
