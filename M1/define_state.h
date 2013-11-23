`ifndef DEFINE_STATE

// This defines the states

typedef enum logic [6:0] {
	S_IDLE,
	S_Begin0,
	S_Begin1,
	S_Begin2,
	S_Begin3,
	S_Begin4,
	S_Begin5,
	S_Begin6,
	S_Begin7,
	S_Begin8,
	S_Begin9,
	S_Begin10,
	S_Begin11,
	S_Begin12,
	S_Begin13,
	S_Begin14,
	S_Begin15,
	S_Begin16,
	S_Begin17,
	S_Begin18,
	S_Begin19,
	S_Begin20,
	S_Begin21,
	S_Begin22,
	S_Begin23,
	S_Begin24,
	S_End0,
	S_End1,
	S_End2,
	S_End3,
	S_End4,
	S_End5,
	S_End6,
	S_End7,
	S_End8,
	S_End9,
	S_End10
} milestone1_state_type;


typedef enum logic[2:0] {
    S_IIDLE, 
    S_ENABLE_UART_RX,
    S_WAIT_UART_RX,
    S_M1    
} top_state_type;

typedef enum logic [1:0] {
	S_RXC_IDLE,
	S_RXC_SYNC,
	S_RXC_ASSEMBLE_DATA,
	S_RXC_STOP_BIT
} RX_Controller_state_type;

typedef enum logic [2:0] {
	S_US_IDLE,
	S_US_STRIP_FILE_HEADER_1,
	S_US_STRIP_FILE_HEADER_2,
	S_US_START_FIRST_BYTE_RECEIVE,
	S_US_WRITE_FIRST_BYTE,
	S_US_START_SECOND_BYTE_RECEIVE,
	S_US_WRITE_SECOND_BYTE
} UART_SRAM_state_type;

typedef enum logic [3:0] {
	S_VS_WAIT_NEW_PIXEL_ROW,
	S_VS_NEW_PIXEL_ROW_DELAY_1,
	S_VS_NEW_PIXEL_ROW_DELAY_2,
	S_VS_NEW_PIXEL_ROW_DELAY_3,
	S_VS_NEW_PIXEL_ROW_DELAY_4,
	S_VS_NEW_PIXEL_ROW_DELAY_5,
	S_VS_FETCH_PIXEL_DATA_0,
	S_VS_FETCH_PIXEL_DATA_1,
	S_VS_FETCH_PIXEL_DATA_2,
	S_VS_FETCH_PIXEL_DATA_3
} VGA_SRAM_state_type;

`define DEFINE_STATE 1
`endif
