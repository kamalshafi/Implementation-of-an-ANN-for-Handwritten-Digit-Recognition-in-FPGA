`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2021 07:51:21 PM
// Design Name: 
// Module Name: adder19
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


module adder19(
input signed[18:0]A,
input signed[18:0]B,
output signed[19:0]Sum
    );
    assign Sum=A+B;
endmodule
