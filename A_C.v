/*
Author: sanket nyayadhish
date : 28 gust 2018
Implementation of an artificial neuron in Verilog
*/

module A_C(
             input[31:0] D1,
             input[31:0] D2,
             input[31:0] D3,
             output Ins);
            
wire D1,D2,D3;
reg Ins;

            always@(*)
            begin
            if ( D1 + D2 + D3 > 9)
            begin
            Ins = 1;
            end
            else
            Ins = 0;
            end
            
            
endmodule                      
