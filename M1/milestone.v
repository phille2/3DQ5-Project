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
module milestone (
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
logic begflag;
logic [1:0] endrepeat; 

//registers for FIR filter, where RegU[6] is Ru[j/2 + 4] and RegU[7] is Ru'[j]
logic [31:0] RegU [5:0];

//registers for FIR filter, where RegV[6] is Rv[j/2 + 4] and RegV[7] is Rv'[j]
logic [31:0] RegV [5:0];

logic [31:0] RegY [1:0];

//data buffers and values for YUV
logic UV_buf_en;
logic [15:0] Y_buf;
logic [31:0] Y;
logic [15:0] U_buf;
logic [15:0] V_buf;
logic [15:0] U_buf1;
logic [15:0] V_buf1;
logic [31:0] Uodd;
logic [31:0] Ueven
logic [31:0] Vodd;
logic [31:0] Veven;
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
logic [17:0] col_count;
logic [17:0] lin_count; 
logic [17:0] U_count;
logic [17:0] V_count;
logic [17:0] Y_count;
logic [17:0] RGB_count; 



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
		//UV_buf_en <= 1'd1;
		Y_buf <= 16'd0;
		U_buf <= 16'd0;
		V_buf <= 16'd0;
		U_buf1 <= 16'd0;
		V_buf1 <= 16'd0;
		Y <= 32'd0;
		U <= 32'd0;
		V <= 32'd0;
		//Y_76284 <= 32'd0;
		ACC <= 32'd0;		
		RegU[0] <= 32'd0;
		RegU[1] <= 32'd0;
		RegU[2] <= 32'd0;
		RegU[3] <= 32'd0;
		RegU[4] <= 32'd0;
		RegU[5] <= 32'd0;
		//RegU[6] <= 32'd0;
		//RegU[7] <= 32'd0;
		RegV[0] <= 32'd0;
		RegV[1] <= 32'd0;
		RegV[2] <= 32'd0;
		RegV[3] <= 32'd0;
		RegV[4] <= 32'd0;
		RegV[5] <= 32'd0;
		//RegV[6] <= 32'd0;
		//RegV[7] <= 32'd0;
		
		col_count <= 18'd0;
		lin_count <=18'd0;
		Y_count <= 18'd0; 
		U_count <= 18'd38400; 
		V_count <= 18'd57800; 
		RGB_count <= 18'd146944; 
		SRAM_we_n <= 1'b1;
		SRAM_write_data <= 16'd0;
		SRAM_address <= 18'd0;
		begflag <= 1'b0;
		endcount <=2'b0';
		
	end else begin
		case (state)
			
		S_IDLE: begin
			  
			if ( milestone1_enable == 1'b1) begin
								
				state <= S_M1_WAIT;
			end
		end
//not needed, just in case
		S_WAIT: begin
			 
			state <= S_M1_START_ROW;
			
		end
///
		S_Begin0: begin
			SRAM_we_n <= 1'b1;
			SRAM_address <= U_count;
			U_count <= U_count + 1'b1; 
			col_count <= col_count + 1'b1; 
			state<= S_Begin1;
		end
		
		S_Begin1: begin
		
			SRAM_address <= U_count;
			state <= S_Begin2;
			
		end
		
		S_Begin2: begin
			SRAM_address <= V_count; 
			V_count = V_count + 1'b1; 
			state <= S_Begin3;
		end
		
		S_Begin3: begin
			SRAM_address <= V_count; 
			//fill initial U reg with edge data
			RegU[0] <= SRAM_read_data[15:8];
			RegU[1] <= SRAM_read_data[15:8];
			RegU[2] <= SRAM_read_data[15:8];
			RegU[3] <= SRAM_read_data[7:0];
			state <= S_Begin4;
		end
		S_Begin4: begin
			SRAM_address <= Y_count;
			U_count <= U_count + 1'b1; 
			col_count <= col_count + 1'b1;
			RegU[4] <= SRAM_read_data[15:8];
			RegU[5] <= SRAM_read_data[7:0];
			
			state <= S_Begin5;
		end
		S_Begin5: begin
			SRAM_address <= U_count; 
			V_count = V_count + 1'b1; 
			//fill initial V reg with edge data
			RegV[0] <= SRAM_read_data[15:8];
			RegV[1] <= SRAM_read_data[15:8];
			RegV[2] <= SRAM_read_data[15:8];
			RegV[3] <= SRAM_read_data[7:0];
			state<= S_Begin6; 
					
		end
		S_Begin6: begin
			SRAM_address <= V_count; 
			Y_count = Y_count + 1'b1; 
			RegV[4] <= SRAM_read_data[15:8];
			RegV[5] <= SRAM_read_data[7:0];
			state <= S_Begin7; 
		end
		S_Begin7: begin
			SRAM_address <= Y_count; 
			RegY[0] <= SRAM_read_data[15:8];
			RegY[1] <= SRAM_read_data[7:0];
			state<=S_Begin8;
		end
		S_Begin8: begin
			RegU[0] <= RegU[1];
			RegU[1] <= RegU[2];
			RegU[2] <= RegU[3];
			RegU[3] <= RegU[4];
			RegU[4] <= RegU[5];
			RegU[5] <= SRAM_read_data[15:8];
			U_buf <= SRAM_read_data[7:0];
			state<=S_Begin9;
			
		end
		
		//technically common case starts here
		//we htink
		
		S_Begin9: begin
			RegV[0] <= RegV[1];
			RegV[1] <= RegV[2];
			RegV[2] <= RegV[3];
			RegV[3] <= RegV[4];
			RegV[4] <= RegV[5];
			RegV[5] <= SRAM_read_data[15:8];
			V_buf <= SRAM_read_data[7:0];
			state<=S_Begin10;
		end
		//write the first pixel of the line RxGx
		S_Begin10: begin
			SRAM_address <= RGB_count; 
			RegY[0] <= SRAM_read_data[15:8];
			RegY[1] <= SRAM_read_data[7:0];
			RGB_count <= RGB_count + 1'b1; 
			SRAM_we_n <= 1'b0;
			SRAM_write_data <= {Red[7:0],Green[7:0]};
			state <= S_Begin11; 
		
		end
		S_Begin11: begin
			SRAM_address <= RGB_count; 
			RGB_count <= RGB_count + 1'b1; 
			SRAM_we_n <= 1'b0;
			SRAM_write_data <= {Blue[7:0],Red[7:0]};
			state <= S_Begin12;
		
		end
		S_Begin12: begin
			SRAM_address <= RGB_count;
			Y_count = Y_count + 1'b1; 
			SRAM_we_n <= 1'b0;
			SRAM_write_data <= {Green[7:0],Blue[7:0]};
			state <= S_Begin13;
		end
		S_Begin13: begin
			SRAM_we_n <= 1'b1;
			SRAM_address <= Y_count; 
			state <= S_Begin14; 
		end
		S_Begin14: begin
			//shift value in from buffer
			//empty buffer
			RegU[0] <= RegU[1];
			RegU[1] <= RegU[2];
			RegU[2] <= RegU[3];
			RegU[3] <= RegU[4];
			RegU[4] <= RegU[5];
			RegU[5] <= U_buf;
			//same for V
			RegV[0] <= RegV[1];
			RegV[1] <= RegV[2];
			RegV[2] <= RegV[3];
			RegV[3] <= RegV[4];
			RegV[4] <= RegV[5];
			RegV[5] <= V_buf;
			state<=S_Begin15; 	
			if(col_count == 7'd79)begin
				
				col_count <=  18'd0;
				state <= S_End0;
			end
			
			
		end
		S_Begin15: begin
		
			//idle
			RGB_count <= RGB_count + 1'b1; 
			state<=S_Begin16
		end
		S_Begin16: begin
			SRAM_address <= RGB_count; 
			RegY[0] <= SRAM_read_data[15:8];
			RegY[1] <= SRAM_read_data[7:0];
			RGB_count <= RGB_count + 1'b1; 
			SRAM_we_n <= 1'b0;
			SRAM_write_data <= {Red[7:0],Green[7:0]};
			state <= S_Begin17;
		end
		S_Begin17:begin
			SRAM_address <= RGB_count; 
			RGB_count <= RGB_count + 1'b1; 
			SRAM_we_n <= 1'b0;
			SRAM_write_data <= {Blue[7:0],Red[7:0]};
			state <= S_Begin18;
			
		end
		S_Begin18: begin
			
			U_count <= U_count + 1'b1;
			col_count <= col_count + 1'b1;
			SRAM_we_n <= 1'b0;
			SRAM_write_data <= {Green[7:0],Blue[7:0]};
			state<= S_Begin19; 
				
		end
		S_Begin19: begin
			SRAM_address<=U_count;
			SRAM_we_n <= 1'b0;
			V_count <= V_count + 1'b1;
			state<=S_Begin20;
		end
		S_Begin20: begin
			SRAM_address<=V_count;
			Y_count <= Y_count + 1'b1;
			state<=S_Begin21; 
			//begflag<=1'b1;
		end
		S_Begin21: begin
			RGB_count <= RGB_count + 1'b1; 
			state<=S_Begin22		
		end
		S_Begin22: begin
			SRAM_address <= RGB_count; 
			RGB_count <= RGB_count + 1'b1; 
			RegU[0] <= RegU[1];
			RegU[1] <= RegU[2];
			RegU[2] <= RegU[3];
			RegU[3] <= RegU[4];
			RegU[4] <= RegU[5];
			RegU[5] <= SRAM_read_data[15:8];
			U_buf <= SRAM_read_data[7:0];
			SRAM_we_n <= 1'b0;
			SRAM_write_data <= {Red[7:0],Green[7:0]};
			state<=S_Begin23; 
		
		end
		S_Begin23: begin
			SRAM_address <= RGB_count; 
			RGB_count <= RGB_count + 1'b1; 
			RegV[0] <= RegV[1];
			RegV[1] <= RegV[2];
			RegV[2] <= RegV[3];
			RegV[3] <= RegV[4];
			RegV[4] <= RegV[5];
			RegV[5] <= SRAM_read_data[15:8];
			V_buf <= SRAM_read_data[7:0];
			SRAM_we_n <= 1'b0;
			SRAM_write_data <= {Blue[7:0],Red[7:0]};
			state<=S_Begin24;
			
		end
		
		S_Begin24: begin:
		
			Y_count <= Y_count + 1'b1;
			SRAM_we_n <= 1'b0;
			SRAM_write_data <= {Green[7:0],Blue[7:0]};
			state<=S_Begin13;
		end 
		S_End0: begin
			SRAM_address <= Y_count; 
			SRAM_we_n <= 1'b1;
			RGB_count <= RGB_count + 1'b1; 
			state<=S_End1; 
		end
		
		S_End1: begin
			SRAM_address <= RGB_count; 
			SRAM_we_n <= 1'b0;
			SRAM_write_data <= {Red[7:0],Green[7:0]};
			RGB_count <= RGB_count + 1'b1; 
			state <= S_End2; 		
		end
		S_End2: begin
			SRAM_we_n <= 1'b0;
			SRAM_address <= RGB_count; 
			SRAM_write_data <= {Blue[7:0],Red[7:0]};
			RGB_count <= RGB_count + 1'b1; 
			state <= S_End3; 		
		end
		S_End3: begin
			SRAM_we_n <= 1'b0;
			SRAM_address <= RGB_count; 
			SRAM_write_data <= {Green[7:0],Blue[7:0]};
			////get ys
			RegY[0] <= SRAM_read_data[15:8];
			RegY[1] <= SRAM_read_data[7:0];		
			state<=S_End4;
		end
		S_End4: begin
			SRAM_we_n <= 1'b1;
			state <=S_End5;
		end
		S_End5: begin
			state<=S_End6;
			Y_count <= Y_count + 1'b1;
		end
		S_End6: begin
			SRAM_address <= Y_count; 
			RGB_count <= RGB_count + 1'b1; 
			state<=S_End7;
		end
		S_End7: begin
			SRAM_address <=RGB_count;
			RGB_count <= RGB_count + 1'b1; 
			SRAM_we_n <= 1'b0;
			SRAM_write_data <= {Red[7:0],Green[7:0]};
			RegU[0] <= RegU[1];
			RegU[1] <= RegU[2];
			RegU[2] <= RegU[3];
			RegU[3] <= RegU[4];
			RegU[4] <= RegU[5];
			RegV[0] <= RegV[1];
			RegV[1] <= RegV[2];
			RegV[2] <= RegV[3];
			RegV[3] <= RegV[4];
			RegV[4] <= RegV[5];
			endrepeat <= endrepeat +1'b1; 
			state<=S_End8;
			
		end
		S_End8: begin
			SRAM_address <=RGB_count;
			RGB_count <= RGB_count + 1'b1; 
			SRAM_we_n <= 1'b0;
			SRAM_write_data <= {Blue[7:0],Red[7:0]};	
			state<=S_End9;
		end
		S_End9: begin
			SRAM_address <=RGB_count;
			SRAM_we_n <= 1'b0;
			SRAM_write_data <= {Green[7:0],Blue[7:0]};
			RegY[0] <= SRAM_read_data[15:8];
			RegY[1] <= SRAM_read_data[7:0];		
			state<=S_End10;
			
		end
		S_End10: begin
			SRAM_we_n <= 1'b1;
			state<=S_End0;
			if (endrepeat == 2'd3) begin
				lin_count = lin_count + 1'b1; 
				if (lin_count == 8'd239 ) begin
					state<=S_Idle;
				end
				state<=S_Begin0; 
				U_count <= U_count + 1'b1; 
				col_count <= col_count + 1'b1; 
				
			end
			
		end
		
		default: state <= S_IDLE;
		endcase
	end
end

always_comb begin
	Mult_op_1 = 0;
	Mult_op_2 = 0;
	
	if(state == S_Begin5) begin
		Mult_op_1 <= 32'd21;
		Mult_op_2 <= RegU[0] + RegU[5]; 
		Mult2_op_1 <= 32'd52;
		Mult2_op_2 <= RegU[1] + RegU[4]; 
		Mult3_op_1 <= 32'd159
		Mult3_op_2 <= RegU[2] + RegU[3]; 
		Ueven <= Reg[2]; 	
	end
	///
	///state 5 or 13
	////
	if (state == S_Begin7 || state == S_Begin13||state==S_Begin19||state==S_End4) begin
		Mult_op_1 <= 32'd21;
		Mult_op_2 <= RegV[0] + RegV[5]; 
		Mult2_op_1 <= 32'd52;
		Mult2_op_2 <= RegV[1] + RegV[4]; 
		Mult3_op_1 <= 32'd159
		Mult3_op_2 <= RegV[2] + RegV[3]; 
		Veven <= Reg[2]; 	
		Uodd <= ((Mult_result-Mult2_result+Mult3_result+7'd128)/8'd256);
	end
	if (state == S_Begin8|| state == S_Begin14||state==S_Begin20||state==S_End5) begin
	
		Mult_op_1 <= 32'd72684;
		Mult_op_2 <= RegY[0] - 32'd16;
		Mult2_op_1 <= 32'd104595
		Mult2_op_2 <= Veven - 32'd128; 
		Mult3_op_1 <= 32'd132251'
		Mult3_op_2 <= Ueven - 32d'128;
		Vodd <= ((Mult_result-Mult2_result+Mult3_result+7'd128)/8'd256);
	end
	
	if (state == S_Begin9||state==S_Begin15||state==S_Begin21||state==S_End0||state==S_End6) begin
		Mult2_op_1 <= 32'd25624;
		Mult2_op_2 <= Ueven - 32'd128; 
		Mult3_op_1 <= 32'd53281;
		Mult3_op_2 <= Veven - 32d'128;
		Red <= ((Mult_result + Mult2_result)/32'd65536);
		Blue <= ((Mult_result + Mult3_result)/32'd65536);
	
	end
	
	if (state == S_Begin10|| state==S_Begin16||state==S_Begin22||state==S_End1||state==S_End7) begin
		Green <= ((Mult_result -Mult2_result - Mult3_result)/32'd65536);
		Mult_op_1 <= 32'd72684;
		Mult_op_2 <= RegY[1] - 32'd16;
		Mult2_op_1 <= 32'd104595
		Mult2_op_2 <= Vodd - 32'd128; 
		Mult3_op_1 <= 32'd132251'
		Mult3_op_2 <= Uodd - 32d'128;		
	end
		
	if (state == S_Begin11||state==S_Begin17||state==S_Begin23||state<=S_End2||state==S_End8) begin
		Mult2_op_1 <= 32'd25624;
		Mult2_op_2 <= Uodd - 32'd128; 
		Mult3_op_1 <= 32'd53281;
		Mult3_op_2 <= Vodd - 32d'128;
		Red <= ((Mult_result + Mult2_result)/32'd65536);
		Blue <= ((Mult_result + Mult3_result)/32'd65536);
	end
	
	if (state == S_Begin12||state== S_Begin18||state==S_End3||state==S_End9) begin
		Mult_op_1 <= 32'd21;
		Mult_op_2 <= RegU[0] + RegU[5]; 
		Mult2_op_1 <= 32'd52;
		Mult2_op_2 <= RegU[1] + RegU[4]; 
		Mult3_op_1 <= 32'd159
		Mult3_op_2 <= RegU[2] + RegU[3]; 
		Ueven <= Reg[2]; 	
		Green <= ((Mult_result -Mult2_result - Mult3_result)/32'd65536);
	end
	
	//////////////////////////////////////////
	
end

assign Mult_result_long = Mult_op_1*Mult_op_2;
assign Mult_result = Mult_result_long[31:0];

assign Mult2_result_long = Mult2_op_1*Mult2_op_2;
assign Mult2_result = Mult2_result_long[31:0];

assign Mult3_result_long = Mult3_op_1*Mult3_op_2;
assign Mult3_result = Mult3_result_long[31:0];

endmodule
