/*
Author: sanket nyayadhish
date : 28 august 2018
Implementation of an artificial neuron in Verilog
*/

module Inhibit(
                input Clk,
                input p_s,
                output Enable,
                output Pulse
                );
                
                
wire Clk,p_s;
reg Pulse,Enable;
reg [31:0] cont;

                always@(p_s or Clk)
                begin
                Pulse = p_s;
                end
                
                always@(posedge p_s)
                begin
                //$display("HELLO");
                cont   = 0;
                Enable = 1;
                end
                always@(posedge Clk)
                begin
                if ( p_s == 0 )
                begin
                 //$display("HELLO1");
                cont = cont + 1;
                end
                if (cont > 3)
                begin
                 //$display("HELLO2");
                Enable = 0;
                end
                end     
                
                
 endmodule
