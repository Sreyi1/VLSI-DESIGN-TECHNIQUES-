`timescale 1ns/1ps
module tb_traffic_light_fsm;reg clk=0,reset=0;wire [1:0] state;wire [15:0] rgb565;traffic_light_fsm #(.RED_TICKS(2),.YELLOW_TICKS(1),.GREEN_TICKS(2)) dut(clk,reset,state,rgb565);always #5 clk=~clk;
initial begin reset=1;#2;reset=0;repeat(2)@(posedge clk);#1;if(state!=1||rgb565!=16'hFFE0)$fatal(1,"expected yellow");repeat(1)@(posedge clk);#1;if(state!=2)$fatal(1,"expected green");$display("PASS");$finish;end endmodule
