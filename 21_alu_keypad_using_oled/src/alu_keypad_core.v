module alu_keypad_core(input wire clk,reset_n,input wire key_valid,input wire [3:0] key,output reg [7:0] result,output reg result_valid,output reg [1:0] entry_state);
reg [3:0] a,b,op;
always @(posedge clk or negedge reset_n) begin if(!reset_n) begin a<=0;b<=0;op<=0;result<=0;result_valid<=0;entry_state<=0;end else begin result_valid<=0;if(key_valid) case(entry_state)
0:if(key<=9)begin a<=key;entry_state<=1;end
1:if(key>=4'hA && key<=4'hD)begin op<=key;entry_state<=2;end
2:if(key<=9)begin b<=key;case(op)4'hA:result<=a+key;4'hB:result<=a-key;4'hC:result<=a*key;4'hD:result<=(key!=0)?a/key:8'hFF;default:result<=0;endcase result_valid<=1;entry_state<=0;end
endcase end end
endmodule
