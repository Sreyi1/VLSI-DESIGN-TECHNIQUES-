module traffic_light_fsm #(parameter integer RED_TICKS=8, YELLOW_TICKS=2, GREEN_TICKS=6)(input wire clk,reset,output reg [1:0] state,output reg [15:0] rgb565);
localparam RED=0,YELLOW=1,GREEN=2; reg [31:0] timer;
always @(posedge clk or posedge reset) begin if(reset) begin state<=RED;timer<=0;end else begin if(timer>=((state==RED)?RED_TICKS-1:(state==YELLOW)?YELLOW_TICKS-1:GREEN_TICKS-1)) begin timer<=0;case(state)RED:state<=YELLOW;YELLOW:state<=GREEN;default:state<=RED;endcase end else timer<=timer+1'b1;end end
always @* case(state) RED:rgb565=16'hF800;YELLOW:rgb565=16'hFFE0;GREEN:rgb565=16'h07E0;default:rgb565=16'h0000;endcase
endmodule
