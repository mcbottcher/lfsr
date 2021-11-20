module lfsr_top
(
    input clk,
    input btnC,
    input [15:0] sw,

    output [15:0] leds,
);

wire divided_clock;

clock_divider u1 
(
    .clk(clk),
    .reset(btnc),
    .divided_clock(divided_clock),
);

lfsr u2
(
    .clk(divided_clock),
    .reset(btnc),
    .tap_control(sw[15:0]),
    .pattern(leds[15:0])
);

endmodule