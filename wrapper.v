`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2021 02:32:09 PM
// Design Name: 
// Module Name: wrapper
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


module wrapper(
input [21:0] mout,
output [7:0] sig_out
    );
    reg  overflow;
    wire [8:0]addr;
    wire sign;
    
    assign addr=mout[13:5];
    assign sign=mout[21];
   
    always@(*)begin
        if(mout[21]==0)
            overflow = (|mout[20:14]);
        else
            overflow = (~(&mout[20:14])) || (~(|mout[13:5])); 
    end    
    sigmoid_0 tr1(addr,sign,overflow,sig_out); 
endmodule
