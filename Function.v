/*
Author: sanket nyayadhish
date : 28 gust 2018
Implementation of an artificial neuron in Verilog
*/

module Function (
                  input[31:0] In,
                  input [3:0]Weight,
                  output [31:0]Result
                  );
                  
                  
wire[31:0] In;
wire [3:0] Weight;
reg [31:0] Result;
                  
                  always@(*)
                  begin
                  
                   Result = (In*Weight)/4;
                  
                  end
                  
                  endmodule
