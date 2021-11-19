// 32 bit clock divider

// divide power gives the position of counter that will be output
// this is equivilent to a division of 2^divide_power of clk

module clock_divider#(parameter DIVIDE_POWER = 26;)
(
    input clk,
    input reset,
    output divided_clock,
);

reg [31:0] count;

always @(posedge clk) begin
    
    if reset == b'0 begin
        count <= count + 1;
    end else begin
        count <= 'h0000_0000;
    end

end

assign divided_clock = count [DIVIDE_POWER];

endmodule