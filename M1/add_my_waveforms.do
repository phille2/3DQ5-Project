

# add waves to waveform

add wave Clock_50

add wave -divider {some label for my divider}

add wave uut/SRAM_we_n

add wave -hexadecimal uut/SRAM_write_data

add wave -unsigned uut/SRAM_read_data

add wave -unsigned uut/SRAM_address

add wave -unsigned uut/Milestone1_unit/U_count

add wave -unsigned uut/Milestone1_unit/V_count
add wave -unsigned uut/Milestone1_unit/Y_count
add wave -unsigned uut/Milestone1_unit/RGB_count


add wave -unsigned uut/Milestone1_unit/col_count
add wave -unsigned uut/Milestone1_unit/lin_count

add wave -unsigned uut/Milestone1_unit/endrepeat
add wave -unsigned uut/Milestone1_unit/Ueven
add wave -unsigned uut/Milestone1_unit/Uodd
add wave -unsigned uut/Milestone1_unit/Veven
add wave -unsigned uut/Milestone1_unit/Vodd

add wave -unsigned uut/Milestone1_unit/Redeven
add wave -unsigned uut/Milestone1_unit/Greeneven
add wave -unsigned uut/Milestone1_unit/Blueeven
add wave -unsigned uut/Milestone1_unit/Redodd
add wave -unsigned uut/Milestone1_unit/Greenodd
add wave -unsigned uut/Milestone1_unit/Blueodd
add wave -unsigned uut/Milestone1_unit/RegU
add wave -unsigned uut/Milestone1_unit/RegV
add wave -unsigned uut/Milestone1_unit/RegY
add wave -unsigned uut/Milestone1_unit/RegY_buf

add wave -signed uut/Milestone1_unit/Mult_result
add wave -signed uut/Milestone1_unit/Mult2_result
add wave -signed uut/Milestone1_unit/Mult3_result
add wave -signed uut/Milestone1_unit/Mult_op_1
add wave -signed uut/Milestone1_unit/Mult_op_2
add wave -signed uut/Milestone1_unit/Mult2_op_1
add wave -signed uut/Milestone1_unit/Mult2_op_2
add wave -signed uut/Milestone1_unit/Mult3_op_1
add wave -signed uut/Milestone1_unit/Mult3_op_2
add wave -unsigned uut/Milestone1_unit/flag

add wave uut/Milestone1_unit/state

