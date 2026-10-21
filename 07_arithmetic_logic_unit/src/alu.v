module alu(input wire [3:0] a,b,input wire [1:0] sel,output reg [7:0] result);
always @* begin
 case(sel)
 2'b00: result = {4'b0,a}+{4'b0,b};
 2'b01: result = (a-b); // unsigned wrap is documented below
 2'b10: result = a*b;
 2'b11: result = (b!=0) ? (a/b) : 8'd0;
 default: result=8'd0;
 endcase
end
endmodule
