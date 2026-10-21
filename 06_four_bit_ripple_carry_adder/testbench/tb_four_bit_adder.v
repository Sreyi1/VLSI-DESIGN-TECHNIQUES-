`timescale 1ns/1ps
module tb_four_bit_adder;
reg [3:0] a,b; reg cin; wire [3:0] sum; wire cout; reg [4:0] expected; integer i;
four_bit_adder dut(a,b,cin,sum,cout);
initial begin for(i=0;i<100;i=i+1) begin a=$random; b=$random; cin=$random; #1; expected=a+b+cin; if({cout,sum}!==expected) $fatal(1,"mismatch"); end $display("PASS: randomized adder checks"); $finish; end
endmodule
