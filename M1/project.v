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

// This is the top module
// It connects the SRAM and VGA together
// It will first write RGB data of an image with 8x8 rectangles of size 40x30 pixels into the SRAM
// The VGA will then read the SRAM and display the image
module project (
		/////// board clocks                      ////////////
		input logic CLOCK_50_I,                   // 50 MHz clock

		/////// pushbuttons/switches              ////////////
		input logic[3:0] PUSH_BUTTON_I,           // pushbuttons
		input logic[17:0] SWITCH_I,               // toggle switches

		/////// VGA interface                     ////////////
		output logic VGA_CLOCK_O,                 // VGA clock
		output logic VGA_HSYNC_O,                 // VGA H_SYNC
		output logic VGA_VSYNC_O,                 // VGA V_SYNC
		output logic VGA_BLANK_O,                 // VGA BLANK
		output logic VGA_SYNC_O,                  // VGA SYNC
		output logic[9:0] VGA_RED_O,              // VGA red
		output logic[9:0] VGA_GREEN_O,            // VGA green
		output logic[9:0] VGA_BLUE_O,             // VGA blue
		
		/////// SRAM Interface                    ////////////
		inout wire[15:0] SRAM_DATA_IO,            // SRAM data bus 16 bits
		output logic[17:0] SRAM_ADDRESS_O,        // SRAM address bus 18 bits
		output logic SRAM_UB_N_O,                 // SRAM high-byte data mask 
		output logic SRAM_LB_N_O,                 // SRAM low-byte data mask 
		output logic SRAM_WE_N_O,                 // SRAM write enable
		output logic SRAM_CE_N_O,                 // SRAM chip enable
		output logic SRAM_OE_N_O                  // SRAM output logic enable
);

parameter NUM_ROW_RECTANGLE = 8,
		  NUM_COL_RECTANGLE = 8,
		  RECT_WIDTH = 40,
		  RECT_HEIGHT = 30,
		  VIEW_AREA_LEFT = 160,
		  VIEW_AREA_RIGHT = 480,
		  VIEW_AREA_TOP = 120,
		  VIEW_AREA_BOTTOM = 360;

state_type state;

// For Push button
logic [3:0] PB_pushed;

// For VGA
logic [9:0] VGA_red, VGA_green, VGA_blue;
logic [9:0] pixel_X_pos;
logic [9:0] pixel_Y_pos;
logic [15:0] count;

logic resetn;

// For SRAM
logic [17:0] SRAM_address;
logic [15:0] SRAM_write_data;
logic SRAM_we_n;
logic [15:0] SRAM_read_data;
logic SRAM_ready;
//
//logic [2:0] rect_row_count;		// Number of rectangles in a row
//logic [2:0] rect_col_count;		// Number of rectangles in a column
//logic [5:0] rect_width_count;	// Width of each rectangle
//logic [4:0] rect_height_count;	// Height of each rectangle
//logic [2:0] color;
logic [15:0][108543] uv_reg;


logic [15:0] VGA_sram_data [2:0];

assign resetn = ~SWITCH_I[17] && SRAM_ready;

// Push Button unit
PB_Controller PB_unit (
	.Clock_50(CLOCK_50_I),
	.Resetn(resetn),
	.PB_signal(PUSH_BUTTON_I),	
	.PB_pushed(PB_pushed)
);

// SRAM unit
SRAM_Controller SRAM_unit (
	.Clock_50(CLOCK_50_I),
	.Resetn(~SWITCH_I[17]),
	.SRAM_address(SRAM_address),
	.SRAM_write_data(SRAM_write_data),
	.SRAM_we_n(SRAM_we_n),
	.SRAM_read_data(SRAM_read_data),		
	.SRAM_ready(SRAM_ready),
		
	// To the SRAM pins
	.SRAM_DATA_IO(SRAM_DATA_IO),
	.SRAM_ADDRESS_O(SRAM_ADDRESS_O),
	.SRAM_UB_N_O(SRAM_UB_N_O),
	.SRAM_LB_N_O(SRAM_LB_N_O),
	.SRAM_WE_N_O(SRAM_WE_N_O),
	.SRAM_CE_N_O(SRAM_CE_N_O),
	.SRAM_OE_N_O(SRAM_OE_N_O)
);

// VGA unit
VGA_Controller VGA_unit(
	.Clock(CLOCK_50_I),
	.Resetn(resetn),

	.iRed(VGA_red),
	.iGreen(VGA_green),
	.iBlue(VGA_blue),
	.oCoord_X(pixel_X_pos),
	.oCoord_Y(pixel_Y_pos),
	
	//	VGA Side
	.oVGA_R(VGA_RED_O),
	.oVGA_G(VGA_GREEN_O),
	.oVGA_B(VGA_BLUE_O),
	.oVGA_H_SYNC(VGA_HSYNC_O),
	.oVGA_V_SYNC(VGA_VSYNC_O),
	.oVGA_SYNC(VGA_SYNC_O),
	.oVGA_BLANK(VGA_BLANK_O),
	.oVGA_CLOCK(VGA_CLOCK_O)
);

// Each rectangle will have different color
assign color = rect_col_count + rect_row_count;
enum logic [2:0] {
	S_IDLE,
	S_DELAY_1,
	S_DELAY_2,
	S_WRITE_CYCLE,
	S_READ_CYCLE,
	S_DELAY_3,
	S_DELAY_4
} BIST_state;

always_ff @ (posedge CLOCK_50_I or negedge resetn) begin
	if (resetn == 1'b0) begin
		state <= S_IDLE;
//		rect_row_count <= 3'd0;
//		rect_col_count <= 3'd0;
//		rect_width_count <= 6'd0;
//		rect_height_count <= 5'd0;
//		
//		VGA_red <= 10'd0;
//		VGA_green <= 10'd0;
//		VGA_blue <= 10'd0;				
		
		SRAM_we_n <= 1'b1;
		SRAM_write_data <= 16'd0;
		SRAM_address <= 18'h9600;
		
	end else begin
			case (SRAM_state)
		S_IDLE: begin
		////////////////////////////////////////
		/////                             //////
		/////  FIX THE START CONDITION    //////
		////////////////////////////////////////
			if (BIST_start & ~BIST_start_buf) begin
				// Start the BIST engine
				SRAM_address <= 18'9600;
				SRAM_we_n <= 1'b1;
				SRAM_write_data <= 16'd0;
				//BIST_mismatch <= 1'b0;
				
				SRAM_finish <= 1'b0;
				count <= 15'b0;
				
				SRAM_state <= S_DELAY_1;
			end else begin
				SRAM_address <= 18'd0;
				SRAM_write_data <= 16'd0;
				SRAM_we_n <= 1'b1;
				SRAM_finish <= 1'b1;				
			end
		end
		S_DELAY_1: begin
			// Delay for reading values starting at U into register
			SRAM_address <= SRAM_address + 18'd1;
			SRAM_state <= S_DELAY_2;
		end
		S_DELAY_2: begin
			// Delay for reading values starting at U into register
			BIST_address <= SRAM_address + 18'd1;
			BIST_state <= S_READ_CYCLE;
		end
		S_WRITE_CYCLE: begin
			// SRAM is writing in this clock cycle
			if(SRAM_address>=18'h23DFF)begin
				SRAM_we_n <= 1'b1;
				SRAM_address <= SRAM_address + 18'd1;	
				
				SRAM_state <= S_DELAY_3;
			
			
			end
			else begin
				
				SRAM_we_n <= 1'b0;
				SRAM_write_data <= uv_reg[count];
				SRAM_address <= SRAM_address + 18'd1;
				count <= count +18'd1;
				SRAM_state <= S_WRITE_CYCLE;			
			
			end
		end
		S_READ_CYCLE: begin
			// SRAM is reading in this clock cycle
			// Check for data mismatch
		//	if (BIST_read_data != (BIST_address[15:0]-16'd2)) BIST_mismatch <= 1'b1;
		if (SRAM_address < 18'h12BFF) begin
				// Increment address and continue
				SRAM_address <= SRAM_address + 18'd1;
				uv_reg[count] <= SRAM_Read_data;
				SRAM_state <= S_READ_CYCLE;
				count <= count+ 15d'2;
			end else begin
				// Delay for loading the last 2 addresses into register
				SRAM_state <= S_DELAY_3;
				uv_reg[count] <= SRAM_Read_data;
				count <= count+ 15d'2
						
			end
		end
		S_DELAY_3: begin
			SRAM_state <= S_DELAY_4;
			uv_reg[count] <= SRAM_Read_data;
			count <= count+ 15d'2;
//			BIST_state <= S_IDLE;
//			if (BIST_read_data != (BIST_address[15:0]-16'd2)) BIST_mismatch <= 1'b1;
		end
		S_DELAY_4: begin
			SRAM_state <= S_WRITE_CYCLE;
			uv_reg[count] <= SRAM_Read_data;
			SRAM_address <= 18'h9600;
			count <= 15'h0;
			// Check for data mismatch
//			if (BIST_read_data != (BIST_address[15:0]-16'd2)) BIST_mismatch <= 1'b1;
//			
//			// Finish the whole SRAM
//			BIST_state <= S_IDLE;
//							
//			BIST_finish <= 1'b1;	
		end
		default: SRAM_state <= S_IDLE;
		endcase
	end
end

endmodule
