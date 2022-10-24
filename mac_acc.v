`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/29/2021 04:51:37 AM
// Design Name: 
// Module Name: mac_acc
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


module mac_acc(
input [127:0] pixels,
input [127:0] weights,
input[7:0]b,
input clk,
input reset,
output [7:0]sig_out

    );
    
    wire[19:0]sum; // MAC output and ACC input
    //instantiate MAC and ACC
    wire [21:0]mac_acc_out;
    mac_1 fr(pixels,weights,clk,sum);
    acc_1 tr0(sum,b,clk,reset,mac_acc_out);
    wrapper sr(mac_acc_out,sig_out);
endmodule
