`timescale 1ns/1ps
module tb_alu;
reg [3:0] a,b; reg [1:0] sel; wire [7:0] result;
alu dut(a,b,sel,result);
initial begin
 a=5;b=3;sel=0;#10;if(result!=8)$fatal;
 sel=1;#10;if(result!==8'h02)$fatal; // low 8-bit two's-complement result for 5-3
 sel=2;#10;if(result!=15)$fatal;
 a=8;b=2;sel=3;#10;if(result!=4)$fatal;
 b=0;#10;if(result!=0)$fatal;
 $display("PASS");$finish;end
endmodule
