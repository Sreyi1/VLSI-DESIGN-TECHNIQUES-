`timescale 1ns/1ps
module tb_up_counter;reg clk=0,reset=0;wire [3:0] count;up_counter #(.CLK_HZ(20),.TICK_HZ(5)) dut(clk,reset,count);always #5 clk=~clk;
initial begin reset=1;#2;reset=0;repeat(8) @(posedge clk);#1;if(count!==4'd4)$fatal(1,"count=%d",count);$display("PASS");$finish;end endmodule
