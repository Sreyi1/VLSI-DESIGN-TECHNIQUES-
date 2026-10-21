`timescale 1ns/1ps
module tb_oled_spi_byte;reg clk=0,reset_n=0,start=0,dc_in=0;reg [7:0] data_in=8'hAE;wire busy,sclk,mosi,cs_n,dc,done;oled_spi_byte #(.CLK_DIV(2)) dut(clk,reset_n,start,dc_in,data_in,busy,sclk,mosi,cs_n,dc,done);always #5 clk=~clk;
initial begin #12;reset_n=1;@(negedge clk);start=1;@(negedge clk);start=0;wait(done);#10;$display("PASS: byte transfer completed");$finish;end endmodule
