// 16 bit linear feedback shift register

module lfsr
(
    input clk,
    input reset,
    input [15:0] tap_control,
    output [15:0] pattern,
);

reg [15:0] taps;

always @(posedge clk) begin
    
    if reset == 'b0 begin
        taps[0] <= ((tap_control[0] and taps[0]) or (tap_control[0] and (taps[0] xor taps[15]))); 
        taps[1] <= ((tap_control[1] and taps[1]) or (tap_control[1] and (taps[1] xor taps[15]))); 
        taps[2] <= ((tap_control[2] and taps[2]) or (tap_control[2] and (taps[2] xor taps[15]))); 
        taps[3] <= ((tap_control[3] and taps[3]) or (tap_control[3] and (taps[3] xor taps[15]))); 
        taps[4] <= ((tap_control[4] and taps[4]) or (tap_control[4] and (taps[4] xor taps[15]))); 
        taps[5] <= ((tap_control[5] and taps[5]) or (tap_control[5] and (taps[5] xor taps[15]))); 
        taps[6] <= ((tap_control[6] and taps[6]) or (tap_control[6] and (taps[6] xor taps[15]))); 
        taps[7] <= ((tap_control[7] and taps[7]) or (tap_control[7] and (taps[7] xor taps[15]))); 
        taps[8] <= ((tap_control[8] and taps[8]) or (tap_control[8] and (taps[8] xor taps[15]))); 
        taps[9] <= ((tap_control[9] and taps[9]) or (tap_control[9] and (taps[9] xor taps[15]))); 
        taps[10] <= ((tap_control[10] and taps[10]) or (tap_control[10] and (taps[10] xor taps[15]))); 
        taps[11] <= ((tap_control[11] and taps[11]) or (tap_control[11] and (taps[11] xor taps[15]))); 
        taps[12] <= ((tap_control[12] and taps[12]) or (tap_control[12] and (taps[12] xor taps[15]))); 
        taps[13] <= ((tap_control[13] and taps[13]) or (tap_control[13] and (taps[13] xor taps[15]))); 
        taps[14] <= ((tap_control[14] and taps[14]) or (tap_control[14] and (taps[14] xor taps[15]))); 
        taps[15] <= ((tap_control[15] and taps[15]) or (tap_control[15] and (taps[15] xor taps[15]))); 
    end else begin
        taps <= 'h000_0000;
    end

end

assign pattern[15:0] = taps[15:0]

endmodule