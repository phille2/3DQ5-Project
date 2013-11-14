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

//constants for offsetting the reading values of the SRAM
parameter U_OFFSET = 18'd38400,
		  V_OFFSET = 18'd57600,
		  RGB_OFFSET = 18'd146944;

state_type state;

// Values of RGB that are calculated and will be sent to the SRAM
logic [31:0] Red, Green, Blue;

logic resetn;

logic leadIn;

// For SRAM
logic [17:0] SRAM_address;
logic [15:0] SRAM_write_data;
logic SRAM_we_n;
logic [15:0] SRAM_read_data;
logic SRAM_ready;

//registers for FIR filter, where RegU[6] is Ru[j/2 + 4] and RegU[7] is Ru'[j]
logic [31:0] RegU [7:0];

//registers for FIR filter, where RegV[6] is Rv[j/2 + 4] and RegV[7] is Rv'[j]
logic [31:0] RegV [7:0];

//data buffers and values for YUV
logic UV_buf_en;
logic [15:0] Y_buf;
logic [15:0] U_buf;
logic [15:0] V_buf;
logic [31:0] Y;
logic [31:0] U;
logic [31:0] V;
//buffer for Y*76284
logic [31:0] Y_76284;
//accumulator
logic [31:0] ACC;

//multiplication variables
logic [31:0] Mult_op_1, Mult_op_2;
logic [31:0] Mult_result;
logic [63:0] Mult_result_long;
logic [31:0] Mult2_op_1, Mult2_op_2;
logic [31:0] Mult2_result;
logic [63:0] Mult2_result_long;
logic [31:0] Mult3_op_1, Mult3_op_2;
logic [31:0] Mult3_result;
logic [63:0] Mult3_result_long;

//a counter for going through the SRAM
logic [17:0] counter;

assign resetn = ~SWITCH_I[17] && SRAM_ready;

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

/*
// VGA unit
VGA_Controller VGA_unit(
	.Clock(CLOCK_50_I),
	.Resetn(resetn),

	.iRed(Red),
	.iGreen(Green),
	.iBlue(Blue),
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
);*/

always_ff @ (posedge CLOCK_50_I or negedge resetn) begin
	if (resetn == 1'b0) begin
		state <= S_IDLE;
		
		Red <= 32'd0;
		Green <= 32'd0;
		Blue <= 32'd0;
		
		leadIn <= 1'b1;
		
		UV_buf_en <= 1'd1;
		Y_buf <= 16'd0;
		U_buf <= 16'd0;
		V_buf <= 16'd0;
		Y <= 32'd0;
		U <= 32'd0;
		V <= 32'd0;
		Y_76284 <= 32'd0;
		ACC <= 32'd0;
		
		RegU[0] <= 32'd0;
		RegU[1] <= 32'd0;
		RegU[2] <= 32'd0;
		RegU[3] <= 32'd0;
		RegU[4] <= 32'd0;
		RegU[5] <= 32'd0;
		RegU[6] <= 32'd0;
		RegU[7] <= 32'd0;
		RegV[0] <= 32'd0;
		RegV[1] <= 32'd0;
		RegV[2] <= 32'd0;
		RegV[3] <= 32'd0;
		RegV[4] <= 32'd0;
		RegV[5] <= 32'd0;
		RegV[6] <= 32'd0;
		RegV[7] <= 32'd0;
		
		counter <= 18'd0;
		
		SRAM_we_n <= 1'b1;
		SRAM_write_data <= 16'd0;
		SRAM_address <= 18'd0;
	end else begin
		case (state)
		S_IDLE: begin
				SRAM_address <= 18'd0;
				counter <= 18'd0;
				state <= S_GET_ADDRESS_FOR_REGISTERS_0;
				RegU[7] <= 32'd128;
				RegV[7] <= 32'd128;
		end
		S_GET_ADDRESS_FOR_REGISTERS_0: begin
			//address for U0U2
			SRAM_address <= U_OFFSET;
			state <= S_GET_ADDRESS_FOR_REGISTERS_1;							
		end
		S_GET_ADDRESS_FOR_REGISTERS_1: begin
			//address for U4U6
			SRAM_address <= U_OFFSET + 18'd1;
			state <= S_GET_ADDRESS_FOR_REGISTERS_2;							
		end
		S_GET_ADDRESS_FOR_REGISTERS_2: begin
			//address for V0V2
			SRAM_address <= V_OFFSET;
			state <= S_FILL_REGISTERS_0;							
		end
		S_FILL_REGISTERS_0: begin //beginning edge case
			//set U0U2 into registers
			RegU[0] <= {24'd0, SRAM_read_data[15:8]};
			RegU[1] <= {24'd0, SRAM_read_data[15:8]};
			RegU[2] <= {24'd0, SRAM_read_data[15:8]};
			RegU[3] <= {24'd0, SRAM_read_data[7:0]};
			//address for V4V6
			SRAM_address <= V_OFFSET + 18'd1;
			state <= S_FILL_REGISTERS_1;							
		end
		S_FILL_REGISTERS_1: begin
			//set U4U6 into registers
			RegU[4] <= {24'd0, SRAM_read_data[15:8]};
			RegU[5] <= {24'd0, SRAM_read_data[7:0]};
			//address for Y0Y1
			SRAM_address <= 18'd0;
			state <= S_FILL_REGISTERS_2;							
		end
		S_FILL_REGISTERS_2: begin
			//set V0V2 into registers
			RegV[0] <= {24'd0, SRAM_read_data[15:8]};
			RegV[1] <= {24'd0, SRAM_read_data[15:8]};
			RegV[2] <= {24'd0, SRAM_read_data[15:8]};
			RegV[3] <= {24'd0, SRAM_read_data[7:0]};
			if (UV_buf_en == 1'd1) begin
				//address for U8U10
				SRAM_address <= U_OFFSET + 18'd2;
			end
			state <= S_FILL_REGISTERS_3;							
		end
		S_FILL_REGISTERS_3: begin
			//set V4V6 into registers
			RegV[4] <= {24'd0, SRAM_read_data[15:8]};
			RegV[5] <= {24'd0, SRAM_read_data[7:0]};
			if (UV_buf_en == 1'd1) begin
				//address for V8V10
				SRAM_address <= V_OFFSET + 18'd2;
			end
			state <= S_SET_EVEN_YUV;
		end
		S_SET_EVEN_YUV: begin			
			//buffer Y0Y1
			Y_buf <= SRAM_read_data;
			//set Y0
			Y <= {24'd0, SRAM_read_data[15:8]};
			//set U0
			U <= RegU[2];
			//set V0
			V <= RegV[2];
			state <= S_RED_0;
			
			//interpolation
			RegU[0] <= RegU[1];
			RegU[1] <= RegU[2];
			RegU[2] <= RegU[3];
			RegU[3] <= RegU[4];
			RegU[4] <= RegU[5];
			RegU[5] <= RegU[0];
			RegV[0] <= RegV[1];
			RegV[1] <= RegV[2];
			RegV[2] <= RegV[3];
			RegV[3] <= RegV[4];
			RegV[4] <= RegV[5];
			RegV[5] <= RegV[0];							
		end
		S_RED_0: begin
			//set write enable back to 1
			SRAM_we_n <= 1'b1;
			if (leadIn == 0) begin
				//set blue pixel value from previous loop
				Blue <= ACC;
			end
			if (UV_buf_en == 1'd1) begin
				//buffer U8U10
				U_buf <= SRAM_read_data;
				RegU[6] <= {24'd0, SRAM_read_data[15:8]};
			end else begin
				RegU[6] <= {24'd0, U_buf[7:0]};
			end
			//set value for Y*76284 to be used for green and blue
			Y_76284 <= Mult_result;
			//set ACC to Y*76284
			ACC <= Mult_result;
			state <= S_RED_1;
			
			//interpolation
			RegU[0] <= RegU[1];							
			RegU[1] <= RegU[2];
			RegU[2] <= RegU[3];
			RegU[3] <= RegU[4];
			RegU[4] <= RegU[5];
			RegU[5] <= RegU[0];
			RegU[7] <= RegU[7] + Mult2_result;
			RegV[0] <= RegV[1];
			RegV[1] <= RegV[2];
			RegV[2] <= RegV[3];
			RegV[3] <= RegV[4];
			RegV[4] <= RegV[5];
			RegV[5] <= RegV[0];
			RegV[7] <= RegV[7] + Mult3_result;
		end
		S_RED_1: begin
			if (leadIn == 0) begin
				//write the values of G1B1 from previous loop into the file
				SRAM_we_n <= 1'b0;
				SRAM_write_data <= {Green[7:0], Blue[7:0]};
				//need counter*3, but can't use another multiplier, so 3 adds
				SRAM_address <= RGB_OFFSET + counter + counter + counter - 18'd1;
			end
			leadIn <= 1'b0;
			if (UV_buf_en == 1'd1) begin
				//buffer V8V10
				V_buf <= SRAM_read_data;
				RegV[6] <= {24'd0, SRAM_read_data[15:8]};
			end else begin
				RegV[6] <= {24'd0, V_buf[7:0]};
			end
			//add Mult_result to ACC
			ACC <= ACC + Mult_result;
			state <= S_GREEN_0;
			UV_buf_en <= ~UV_buf_en;
			
			//interpolation
			RegU[0] <= RegU[1];							
			RegU[1] <= RegU[2];
			RegU[2] <= RegU[3];
			RegU[3] <= RegU[4];
			RegU[4] <= RegU[5];
			RegU[5] <= RegU[0];
			RegU[7] <= RegU[7] + Mult2_result;
			RegV[0] <= RegV[1];
			RegV[1] <= RegV[2];
			RegV[2] <= RegV[3];
			RegV[3] <= RegV[4];
			RegV[4] <= RegV[5];
			RegV[5] <= RegV[0];
			RegV[7] <= RegV[7] + Mult3_result;						
		end
		S_GREEN_0: begin
			SRAM_we_n <= 1'd1;
			//set red pixel value
			Red <= ACC;
			//start the acumulation for green
			ACC <= Y_76284 + Mult_result;
			state <= S_GREEN_1;
			
			//interpolation
			RegU[0] <= RegU[1];							
			RegU[1] <= RegU[2];
			RegU[2] <= RegU[3];
			RegU[3] <= RegU[4];
			RegU[4] <= RegU[5];
			RegU[5] <= RegU[0];
			RegU[7] <= RegU[7] + Mult2_result;
			RegV[0] <= RegV[1];
			RegV[1] <= RegV[2];
			RegV[2] <= RegV[3];
			RegV[3] <= RegV[4];
			RegV[4] <= RegV[5];
			RegV[5] <= RegV[0];
			RegV[7] <= RegV[7] + Mult3_result;
		end
		S_GREEN_1: begin
			ACC <= ACC + Mult_result;
			state <= S_BLUE_0;
			
			//interpolation
			RegU[0] <= RegU[1];							
			RegU[1] <= RegU[2];
			RegU[2] <= RegU[3];
			RegU[3] <= RegU[4];
			RegU[4] <= RegU[5];
			RegU[5] <= RegU[0];
			RegU[7] <= RegU[7] + Mult2_result;
			RegV[0] <= RegV[1];
			RegV[1] <= RegV[2];
			RegV[2] <= RegV[3];
			RegV[3] <= RegV[4];
			RegV[4] <= RegV[5];
			RegV[5] <= RegV[0];
			RegV[7] <= RegV[7] + Mult3_result;
		end
		S_BLUE_0: begin
			//set green pixel value
			Green <= ACC;
			ACC <= Y_76284 + Mult_result;
			state <= S_RED_ODD_0;
			//set the odd value of Y
			Y <= {24'd0, Y_buf[7:0]};
			
			//interpolation
			RegU[0] <= RegU[1];							
			RegU[1] <= RegU[2];
			RegU[2] <= RegU[3];
			RegU[3] <= RegU[4];
			RegU[4] <= RegU[5];
			RegU[5] <= RegU[0];
			RegU[7] <= RegU[7] + Mult2_result;
			RegV[0] <= RegV[1];
			RegV[1] <= RegV[2];
			RegV[2] <= RegV[3];
			RegV[3] <= RegV[4];
			RegV[4] <= RegV[5];
			RegV[5] <= RegV[0];
			RegV[7] <= RegV[7] + Mult3_result;
		end
		S_RED_ODD_0: begin
			//set blue pixel value
			Blue <= ACC;
			//set value for Y*76284 to be used for green odd and blue odd
			Y_76284 <= Mult_result;
			//set ACC to Y*76284
			ACC <= Mult_result;
			//set the odd values of UV that were calculated
			U <= RegU[7];
			V <= RegV[7];
			//write the values of R0G0 into the file
			SRAM_we_n <= 1'b0;
			SRAM_write_data <= {Red[7:0], Green[7:0]};
			//need counter*3, but can't use another multiplier, so 3 adds
			SRAM_address <= RGB_OFFSET + counter + counter + counter;
			state <= S_RED_ODD_1;
			
			//interpolation
			RegU[0] <= RegU[1];							
			RegU[1] <= RegU[2];
			RegU[2] <= RegU[3];
			RegU[3] <= RegU[4];
			RegU[4] <= RegU[5];
			RegU[5] <= RegU[6];
			RegV[0] <= RegV[1];
			RegV[1] <= RegV[2];
			RegV[2] <= RegV[3];
			RegV[3] <= RegV[4];
			RegV[4] <= RegV[5];
			RegV[5] <= RegV[6];
		end
		S_RED_ODD_1: begin
			//address for Y2Y3
			SRAM_address <= counter + 18'd1;
			//set write enable back to 1
			SRAM_we_n <= 1'b1;
			//add Mult_result to ACC
			ACC <= ACC + Mult_result;
			state <= S_GREEN_ODD_0;
		end
		S_GREEN_ODD_0: begin
			//set red pixel value
			Red <= ACC;
			//start the acumulation for green
			ACC <= Y_76284 + Mult_result;
			state <= S_GREEN_ODD_1;
			if (UV_buf_en == 1'd1) begin
				//address for U12U14
				SRAM_address <= U_OFFSET + counter >> 1 + 18'd3;
			end			
		end
		S_GREEN_ODD_1: begin
			ACC <= ACC + Mult_result;
			state <= S_BLUE_ODD_0;
			if (UV_buf_en == 1'd1) begin
				//address for V12V14
				SRAM_address <= V_OFFSET + counter >> 1 + 18'd3;
			end
		end
		S_BLUE_ODD_0: begin
			//write the values of B0R1 into the file
			SRAM_we_n <= 1'b0;
			SRAM_write_data <= {Blue[7:0], Red[7:0]};
			//need counter*3, but can't use another multiplier, so 3 adds
			SRAM_address <= RGB_OFFSET + counter + counter + counter + 18'd1;
			//set green pixel value
			Green <= ACC;
			ACC <= Y_76284 + Mult_result;
			//buffer Y2Y3
			Y_buf <= SRAM_read_data;
			//set Y6
			Y <= {24'd0, SRAM_read_data[15:8]};
			//set U6
			U <= RegU[2];
			//set V6
			V <= RegV[2];
			//increment the counter
			counter <= counter + 18'd1;
			state <= S_RED_0;
			
			//interpolation
			RegU[0] <= RegU[1];
			RegU[1] <= RegU[2];
			RegU[2] <= RegU[3];
			RegU[3] <= RegU[4];
			RegU[4] <= RegU[5];
			RegU[5] <= RegU[0];
			RegV[0] <= RegV[1];
			RegV[1] <= RegV[2];
			RegV[2] <= RegV[3];
			RegV[3] <= RegV[4];
			RegV[4] <= RegV[5];
			RegV[5] <= RegV[0];
		end
		default: state <= S_IDLE;
		endcase
	end
end

always_comb begin
	Mult_op_1 = 0;
	Mult_op_2 = 0;
	if (state == S_RED_0 || state == S_RED_ODD_0) begin
		Mult_op_1 = Y - 32'd16;
		Mult_op_2 = 32'd76284;
	end
	else if (state == S_RED_1 || state == S_RED_ODD_1) begin
		Mult_op_1 = V - 32'd128;
		Mult_op_2 = 32'd104595;
	end
	else if (state == S_GREEN_0 || state == S_GREEN_ODD_0) begin
		Mult_op_1 = U - 32'd128;
		Mult_op_2 = 32'd25624;
	end
	else if (state == S_GREEN_1 || state == S_GREEN_ODD_1) begin
		Mult_op_1 = V - 32'd128;
		Mult_op_2 = 32'd53281;
	end
	else if (state == S_BLUE_0 || state == S_BLUE_ODD_0) begin
		Mult_op_1 = U - 32'd128;
		Mult_op_2 = 32'd132251;
	end
end

always_comb begin
	Mult2_op_1 = 0;
	Mult2_op_2 = 0;
	Mult3_op_1 = 0;
	Mult3_op_2 = 0;
	if (state == S_FILL_REGISTERS_3) begin
		Mult2_op_1 = RegU[0];
		Mult2_op_2 = 32'd21;
		Mult3_op_1 = RegV[0];
		Mult3_op_2 = 32'd21;
	end
end

assign Mult_result_long = Mult_op_1*Mult_op_2;
assign Mult_result = {24'd0, Mult_result_long[23:16]};

assign Mult2_result_long = Mult2_op_1*Mult2_op_2;
assign Mult2_result = Mult2_result_long[39:8];

assign Mult3_result_long = Mult3_op_1*Mult3_op_2;
assign Mult3_result = {24'd0, Mult3_result_long[23:16]};

endmodule
