`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2021 07:22:59 PM
// Design Name: 
// Module Name: Mult
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


module Mult(
input signed [7:0]X,
input signed [7:0]W,
output signed [15:0]O
    );
    assign O= X*W;
endmodule
