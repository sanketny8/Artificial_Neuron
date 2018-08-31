/*
Author: sanket nyayadhish
date : 28 gust 2018
Implementation of an artificial neuron in Verilog
*/

`include "A_C.v"
`include "Inhibit.v"
`include "Function.v"
`include "Timer.v"

module Neuron(
              input Clk
              );


wire Clk;
reg DE1,DE2,DE3;
reg [3:0] W1,W2,W3;
wire En,Out;
wire OUT_PULSE;
wire [31:0] C1,C2,C3,R1,R2,R3;

A_C      ADD_COMP(R1,R2,R3,Out);
Inhibit  Inhibit1(Clk,Out,En,OUT_PULSE);
Function F1(C1,W1,R1);
Function F2(C2,W2,R2);
Function F3(C3,W3,R3);
Timer    T1(Clk,DE1,En,C1);
Timer    T2(Clk,DE2,En,C2);
Timer    T3(Clk,DE3,En,C3);

 
 
endmodule

