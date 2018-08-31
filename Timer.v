/*
Author: sanket nyayadhish
date : 28 august 2018
Implementation of an artificial neuron in Verilog
*/

module Timer(
              input Clk,
              input Input,
              input Enable,
              output[31:0] Count
              );
              
              
wire Clk,Input,Enable;
reg p_start = 0;
reg [31:0] Count =0;
              always@(Input or Clk)
              begin
              if (Enable == 1)
              begin
              Count = 32'b0;
              p_start = 0;
              end
              else
              begin
              if (Input == 1)
              begin
              //Count   = 32'd0;
              p_start = 1;
              end
              end
              end
              
             always@(posedge(Clk) or p_start)
             begin
             if (p_start == 1)
             Count = Count + 1'b1;
             end  
              
              endmodule
