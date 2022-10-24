`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/29/2021 02:33:43 AM
// Design Name: 
// Module Name: adder22
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


module adder22(
input signed [19:0]A,
input signed [21:0]B,
output signed [21:0]O
    );
    assign O=A+B;
endmodule
