`timescale 1ns/1ps
module tb_matrix_2x2;
reg clk=0; reg [31:0] A,B; wire [67:0] Res;
matrix_2x2 dut(clk,A,B,Res); always #5 clk=~clk;
initial begin
 A=32'h01020304; B=32'h05060708;
 repeat(3) begin @(posedge clk); #1; end
 if(Res[67:51]!==17'd19 || Res[50:34]!==17'd22 || Res[33:17]!==17'd43 || Res[16:0]!==17'd50) begin $display("Res=%h",Res); $fatal(1,"matrix result mismatch"); end
 $display("PASS"); $finish;
end
endmodule
