`timescale 1ns/1ps
module tb_up_down_counter;reg clk=0,reset=0,up_down=1;wire [3:0] count;up_down_counter #(.CLK_HZ(20),.TICK_HZ(5)) dut(clk,reset,up_down,count);always #5 clk=~clk;
initial begin reset=1;#2;reset=0;repeat(4)@(posedge clk);#1;if(count!==2)$fatal(1,"up count");up_down=0;repeat(2)@(posedge clk);#1;if(count!==1)$fatal(1,"down count");$display("PASS");$finish;end endmodule
