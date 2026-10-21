`timescale 1ns/1ps
module tb_full_adder;
reg a,b,cin; wire sum,carry; integer i; reg [1:0] expected;
full_adder dut(.a(a),.b(b),.cin(cin),.sum(sum),.carry(carry));
initial begin
 for(i=0;i<8;i=i+1) begin {a,b,cin}=i; #10;
 expected = a + b + cin; if ({carry,sum} !== expected) $fatal(1,"full adder mismatch"); end
 $display("PASS: all 8 full-adder combinations"); $finish;
end
endmodule
