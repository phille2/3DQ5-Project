`ifndef DEFINE_STATE

// This defines the states for BIST

typedef enum logic [2:0] {
	S_IDLE,
	S_DELAY_1,
	S_DELAY_2,
	S_WRITE_CYCLE,
	S_READ_CYCLE,
	S_DELAY_3,
	S_DELAY_4
} BIST_state_type;

`define DEFINE_STATE 1
`endif
