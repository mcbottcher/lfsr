`timescale 1ns / 1ps

module leddriver(
	input clk,
    output [15:0] leds_out
    );

reg [15:0] count;

always @(posedge clk) begin

    count <= count + 1;
	
end 

assign leds_out[15:0] = count[15:0];

endmodule
  
