/*
Author: sanket nyayadhish
date : 28 august 2018
Implementation of an artificial neuron in Verilog
*/
`include"Neuron.v"
`timescale 1ns/1ns
          module Test_neuron();

          reg Clk;
          Neuron N(Clk);

          always 
          begin
          #5 Clk =~ Clk;
          end


         initial 
         begin
         $dumpfile("Test_neuron.vcd");
         $dumpvars(0,N);
        // $monitor("  %d %d %d %d %d %d %d",$time,N.R1,N.R2,N.R3,N.Out,N.OUT_PULSE,N.En,N.Inhibit1.cont);
         Clk = 0;
         N.DE1 = 1;
         N.DE2 = 1;
         N.DE3 = 1;
           N.W1 = 4'b1000;
           N.W2 = 4'b0100;
           N.W3 = 4'b1111;
           #100
         N.W1 = 4'b111;
         N.W2 = 4'b0011;
         N.W3 = 4'b0111;
         #100
        N.W1 = 4'b0000;
        N.W2 = 4'b0000;
        N.W3 = 4'b0000;
        #100
         N.W1 = 4'b111;
         N.W2 = 4'b0011;
         N.W3 = 4'b0111;
         
        #500 $finish ;
         end     
        endmodule         
