`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Digilent Inc.
// Engineer: Varun Kondagunturi
// 
// Create Date:    17:08:26 06/12/2014 
// Design Name: 
// Module Name:    Abacus_Top_Module 
// Project Name: 
// Target Devices: 
// Tool versions: 
//
//
// Description: 
//This is the Top-Level Source file for the Abacus Project. 
//Slide switches provide two 8-bit binary inputs A and B. 
//Slide Switches [15 down to 8] is input A.
//Slide Switches [7 down to 0] is input B.
//Inputs from the Push Buttons ( btnU, btnD, btnR, btnL) will allow the user to select different arithmetic operations that will be computed on the inputs A and B.
//btnU: Subtraction/Difference. Result will Scroll
//When A>B, difference is positive. 
//When A<B, difference is negative. If the button is not held down but just pressed once, the result will scroll. To find out if the result is negative, press and hold onto the push button btnU. This will show the negative sign. 
//btnD: Multiplication/Product. Result will Scroll
//btnR: Quotient(Division Operation). Press and Hold the button to display result
//btnL: Remainder ( Division Operation). Press and Hold the button to display result
//Output is displayed on the 7 segment LED display. 
//
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
 module Basys3_Abacus_Top(

//CLK Input
	 input clk,
	 
// LED Outputs
     output [15:0] led
     
 );

wire sec_clk;

// Divider Module
divider u1(

.clk(clk),
.sec_clk(sec_clk)
);

leddriver u2(

.clk(sec_clk),
.leds_out(led)

);

endmodule