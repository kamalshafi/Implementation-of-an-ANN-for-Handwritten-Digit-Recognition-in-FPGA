`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2021 07:42:17 PM
// Design Name: 
// Module Name: adder18
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


module adder18(
input signed[17:0]A,
input signed[17:0]B,
output signed[18:0]Sum
    );
    assign Sum=A+B;
endmodule
