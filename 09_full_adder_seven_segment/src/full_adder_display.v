module full_adder_display(input wire [3:0] a,b,input wire cin,output wire [6:0] seg,output wire [7:0] an,output wire dp,output wire carry_out);
wire [4:0] sum_ext; assign sum_ext={1'b0,a}+{1'b0,b}+cin; assign carry_out=sum_ext[4];
assign an=8'b11111110; assign dp=1'b1;
seven_segment decoder(.hex(sum_ext[3:0]),.seg(seg));
endmodule
module seven_segment(input wire [3:0] hex,output reg [6:0] seg);
always @* case(hex)
0:seg=7'b1000000;1:seg=7'b1111001;2:seg=7'b0100100;3:seg=7'b0110000;4:seg=7'b0011001;5:seg=7'b0010010;6:seg=7'b0000010;7:seg=7'b1111000;8:seg=7'b0000000;9:seg=7'b0010000;10:seg=7'b0001000;11:seg=7'b0000011;12:seg=7'b1000110;13:seg=7'b0100001;14:seg=7'b0000110;15:seg=7'b0001110;default:seg=7'b1111111;endcase
endmodule
