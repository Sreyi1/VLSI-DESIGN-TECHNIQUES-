module four_bit_dff(input wire [3:0] d,input wire clk,reset,output reg [3:0] q);
always @(posedge clk or posedge reset) begin if(reset) q<=4'b0000; else q<=d; end
endmodule
