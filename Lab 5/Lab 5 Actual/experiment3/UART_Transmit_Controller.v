/*
Copyright by Henry Ko and Nicola Nicolici
Developed for the Digital Systems Design course (COE3DQ4)
Department of Electrical and Computer Engineering
McMaster University
Ontario, Canada
*/

`timescale 1ns/100ps
`default_nettype none

`include "define_state.h"

// This module drivers the UART_TX pin, and serializes the data to be sent
module UART_Transmit_Controller (
	input logic Clock,
	input logic TX_clock_enable,
	input logic Resetn,
	
	input logic Start,
	
	input logic [7:0] TX_data,
	output logic Empty,

	// UART pin	
	output logic UART_TX_O
);

TX_Controller_state_type TXC_state;

logic [7:0] data_buffer;
logic [2:0] data_count;

always @ (posedge Clock or negedge Resetn) begin
	if (!Resetn) begin
		data_buffer <= 8'h00;
		Empty <= 1'b1;
		UART_TX_O <= 1'b1;
		data_count <= 3'h0;
		TXC_state <= S_TXC_IDLE;
	end else begin
		if (TX_clock_enable) begin
			case (TXC_state)
			S_TXC_IDLE: begin
				UART_TX_O <= 1'b1;
				Empty <= 1'b1;
			
				if (Start) begin
					// Start detected, prepare to send
					Empty <= 1'b0;
					data_count <= 3'h0;					
					data_buffer <= TX_data;
			    TXC_state <= S_TXC_START_BIT;
  				end
			end
			S_TXC_START_BIT: begin
				// Send the start bit
					UART_TX_O <= 1'b0;
				
			TXC_state <= S_TXC_DATA;
				
			end
			S_TXC_DATA: begin
				// Repeat here until the 8 bit data is sent
				if (data_count<3'd8)begin
				  UART_TX_O <= data_buffer[data_count];
				  data_count <= data_count + 1'b1;
				  
			  end
			  else TXC_state<=S_TXC_STOP_BIT;
				
			end
			S_TXC_STOP_BIT: begin
				// This is the stop bit
			 UART_TX_O <= 1'b1;
			TXC_state <= S_TXC_IDLE;
				
				
				
			end
			default: TXC_state <= S_TXC_IDLE;
			endcase
		end
	end
end

endmodule
