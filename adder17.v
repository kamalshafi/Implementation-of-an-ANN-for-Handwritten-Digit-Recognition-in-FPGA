`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2021 07:35:07 PM
// Design Name: 
// Module Name: adder17
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


module adder17(
input signed [16:0]A,
input signed [16:0]B,
output signed [17:0]Sum
    );
    assign Sum=A+B;
endmodule
