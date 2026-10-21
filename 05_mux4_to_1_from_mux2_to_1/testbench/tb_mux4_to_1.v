`timescale 1ns/1ps
module tb_mux4_to_1;
reg [3:0] d; reg [1:0] sel; wire y; integer i;
mux4_to_1 dut(.d0(d[0]),.d1(d[1]),.d2(d[2]),.d3(d[3]),.sel(sel),.y(y));
initial begin d=4'b1010; for(i=0;i<4;i=i+1) begin sel=i; #10; if(y!==d[i]) $fatal(1,"mux mismatch"); end $display("PASS"); $finish; end
endmodule
