`timescale 1ns / 1ps

module divider(
	input clk,
    output sec_clk
    );

reg [31:0] count;
reg sec_temp;

always @(posedge clk) begin

    count <= count + 1;
	if(count == 32'h2FAF080)
	begin
	   count <= 0;
	   sec_temp <= ~sec_temp;
	end
	
end 

assign sec_clk = sec_temp;

endmodule
  