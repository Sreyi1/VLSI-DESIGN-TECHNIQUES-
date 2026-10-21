module keypad_scanner(input wire clk,reset_n,input wire [3:0] row,output reg [3:0] col,output reg [3:0] key,output reg key_valid);
reg [1:0] scan; reg [3:0] row_latched;
always @(posedge clk or negedge reset_n) begin if(!reset_n) begin scan<=0;col<=4'b1110;key<=0;key_valid<=0;row_latched<=4'hf;end else begin
 scan<=scan+1'b1; col<=~(4'b0001<<scan); key_valid<=0;
 if(row!=4'hf) begin row_latched<=row; case(scan)
 0:case(row)4'b1110:begin key<=1;key_valid<=1;end 4'b1101:begin key<=4;key_valid<=1;end 4'b1011:begin key<=7;key_valid<=1;end 4'b0111:begin key<=0;key_valid<=1;end default:;endcase
 1:case(row)4'b1110:begin key<=2;key_valid<=1;end 4'b1101:begin key<=5;key_valid<=1;end 4'b1011:begin key<=8;key_valid<=1;end 4'b0111:begin key<=4'hF;key_valid<=1;end default:;endcase
 2:case(row)4'b1110:begin key<=3;key_valid<=1;end 4'b1101:begin key<=6;key_valid<=1;end 4'b1011:begin key<=9;key_valid<=1;end 4'b0111:begin key<=4'hE;key_valid<=1;end default:;endcase
 3:case(row)4'b1110:begin key<=4'hA;key_valid<=1;end 4'b1101:begin key<=4'hB;key_valid<=1;end 4'b1011:begin key<=4'hC;key_valid<=1;end 4'b0111:begin key<=4'hD;key_valid<=1;end default:;endcase
 endcase end
end end
endmodule
module keypad_alu(input wire clk,reset_n,input wire [3:0] row,output wire [3:0] col,output reg [7:0] result,output reg result_valid);
wire [3:0] key; wire key_valid; reg [3:0] a,b,op; reg [1:0] state;
keypad_scanner scanner(clk,reset_n,row,col,key,key_valid);
always @(posedge clk or negedge reset_n) begin if(!reset_n) begin a<=0;b<=0;op<=0;state<=0;result<=0;result_valid<=0;end else begin result_valid<=0;if(key_valid) case(state)
0:if(key<=9)begin a<=key;state<=1;end
1:if(key>=4'hA && key<=4'hD)begin op<=key;state<=2;end
2:if(key<=9)begin b<=key;case(op)4'hA:result<=a+key;4'hB:result<=a-key;4'hC:result<=a*key;4'hD:result<=(key!=0)?a/key:8'hFF;default:result<=0;endcase result_valid<=1;state<=0;end
endcase end end
endmodule
