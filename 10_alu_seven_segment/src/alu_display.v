module alu_display(input wire [3:0] a,b,input wire [1:0] sel,output wire [7:0] result,output wire [6:0] seg,output wire [7:0] an,output wire dp);
alu u_alu(.a(a),.b(b),.sel(sel),.result(result));
assign an=8'b11111110; assign dp=1'b1;
seven_segment decoder(.hex(result[3:0]),.seg(seg));
endmodule
module alu(input wire [3:0] a,b,input wire [1:0] sel,output reg [7:0] result);
always @* case(sel)
2'b00:result=a+b;2'b01:result=a-b;2'b10:result=a*b;2'b11:result=(b!=0)?a/b:8'd0;default:result=0;endcase
endmodule
module seven_segment(input wire [3:0] hex,output reg [6:0] seg);
always @* case(hex)
0:seg=7'b1000000;1:seg=7'b1111001;2:seg=7'b0100100;3:seg=7'b0110000;4:seg=7'b0011001;5:seg=7'b0010010;6:seg=7'b0000010;7:seg=7'b1111000;8:seg=7'b0000000;9:seg=7'b0010000;10:seg=7'b0001000;11:seg=7'b0000011;12:seg=7'b1000110;13:seg=7'b0100001;14:seg=7'b0000110;15:seg=7'b0001110;default:seg=7'b1111111;endcase
endmodule
