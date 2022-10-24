`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2021 07:41:06 PM
// Design Name: 
// Module Name: adder16
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


module adder16(
input signed[15:0]A,
input signed[15:0]B,
output signed[16:0]Sum
    );
assign Sum=A+B; 
endmodule
