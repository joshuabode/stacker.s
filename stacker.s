stack_base_address equ 0x200
bra_init_stack defw stack_base;
ld r7, bra_init_stack;

table_table
screen defw screen_table
def_screen defw default_screen_table
global defw globals_table
constant defw constants_table
color defw color_table
jump defw jump_table
io defw io_table

jump_table;
bra_main defw main;
bra_fn_sleep defw fn_sleep;
bra_fn_draw defw fn_draw;
bra_fn_scroll defw fn_scroll;
bra_fn_right defw fn_right;
bra_fn_blit_level defw fn_blit_level;
bra_fn_trim defw fn_trim;
bra_fn_print_base defw fn_print_base;
bra_fn_print_score defw fn_print_score;
bra_fn_count_row defw fn_count_row;
bra_fn_reset defw fn_reset;
bra_game_over defw game_over;
bra_main_loop defw main_loop

screen_table
scr00 defw 0;
scr01 defw 0;
scr02 defw 0;
scr03 defw 0;
scr04 defw 0;
scr05 defw 0;
scr06 defw 0;
scr07 defw 0;
scr10 defw 0;
scr11 defw 0;
scr12 defw 0;
scr13 defw 0;
scr14 defw 0;
scr15 defw 0;
scr16 defw 0;
scr17 defw 0;
scr20 defw 0;
scr21 defw 0;
scr22 defw 0;
scr23 defw 0;
scr24 defw 0;
scr25 defw 0;
scr26 defw 0;
scr27 defw 0;
scr30 defw 0;
scr31 defw 0;
scr32 defw 0;
scr33 defw 0;
scr34 defw 0;
scr35 defw 0;
scr36 defw 0;
scr37 defw 0;
scr40 defw 0;
scr41 defw 0;
scr42 defw 0b00111100;
scr43 defw 0b00111100;
scr44 defw 0b00111100;
scr45 defw 0b00111100;
scr46 defw 0;
scr47 defw 0;
scr50 defw 0;
scr51 defw 0;
scr52 defw 0b01011100;
scr53 defw 0b01011100;
scr54 defw 0b01011100;
scr55 defw 0b01011100;
scr56 defw 0;
scr57 defw 0;
scr60 defw 0;
scr61 defw 0;
scr62 defw 0b10011100;
scr63 defw 0b10011100;
scr64 defw 0b10011100;
scr65 defw 0b10011100;
scr66 defw 0;
scr67 defw 0;
scr70 defw 0;
scr71 defw 0;
scr72 defw 0b10011100;
scr73 defw 0b10011100;
scr74 defw 0b10011100;
scr75 defw 0b10011100;
scr76 defw 0;
scr77 defw 0;
scr80 defw 0;
scr81 defw 0;
scr82 defw 0;
scr83 defw 0;
scr84 defw 0;
scr85 defw 0;
scr86 defw 0;
scr87 defw 0;

default_screen_table
def_scr00 defw 0;
def_scr01 defw 0;
def_scr02 defw 0;
def_scr03 defw 0;
def_scr04 defw 0;
def_scr05 defw 0;
def_scr06 defw 0;
def_scr07 defw 0;
def_scr10 defw 0;
def_scr11 defw 0;
def_scr12 defw 0;
def_scr13 defw 0;
def_scr14 defw 0;
def_scr15 defw 0;
def_scr16 defw 0;
def_scr17 defw 0;
def_scr20 defw 0;
def_scr21 defw 0;
def_scr22 defw 0;
def_scr23 defw 0;
def_scr24 defw 0;
def_scr25 defw 0;
def_scr26 defw 0;
def_scr27 defw 0;
def_scr30 defw 0;
def_scr31 defw 0;
def_scr32 defw 0;
def_scr33 defw 0;
def_scr34 defw 0;
def_scr35 defw 0;
def_scr36 defw 0;
def_scr37 defw 0;
def_scr40 defw 0;
def_scr41 defw 0;
def_scr42 defw 0b00111100;
def_scr43 defw 0b00111100;
def_scr44 defw 0b00111100;
def_scr45 defw 0b00111100;
def_scr46 defw 0;
def_scr47 defw 0;
def_scr50 defw 0;
def_scr51 defw 0;
def_scr52 defw 0b01011100;
def_scr53 defw 0b01011100;
def_scr54 defw 0b01011100;
def_scr55 defw 0b01011100;
def_scr56 defw 0;
def_scr57 defw 0;
def_scr60 defw 0;
def_scr61 defw 0;
def_scr62 defw 0b10011100;
def_scr63 defw 0b10011100;
def_scr64 defw 0b10011100;
def_scr65 defw 0b10011100;
def_scr66 defw 0;
def_scr67 defw 0;
def_scr70 defw 0;
def_scr71 defw 0;
def_scr72 defw 0b10011100;
def_scr73 defw 0b10011100;
def_scr74 defw 0b10011100;
def_scr75 defw 0b10011100;
def_scr76 defw 0;
def_scr77 defw 0;

globals_table;
active0 defw 0;
active1 defw 0;
active2 defw 0;
active3 defw 0;
score defw 0;
score_delta defw 0;
color_pointer defw 0;
sleep_amount defw 5000;
active_size defw 4;
min_sleep_amount defw 1000;
main_sleep_loop_i defw 0;
score_message data "                    Score:                                  Press SW-F to stack!\0";

constants_table
input_sleep_amount defw 300;
max_color_pointer
center_btn_val defw 32;
sleep_loop_amount defw 249;
screen_end defw 64;
trim_loop_start_i defw scr77;
warp_position
trim_loop_end_i defw scr40;
count_loop_start_i defw scr42;
count_loop_end_i defw scr45;
zero_ascii defw 48;
def_sleep_amount defw 5000;
game_over_note defw 0xF221
game_over_message data "Game Over!    \0";

color_table;
defw 0b00011100; green
defw 0b00011101;
defw 0b00011110;
defw 0b00011111;
defw 0b00011011;
defw 0b00010111;
defw 0b00010011;
defw 0b00001111;
defw 0b00001011;
defw 0b00000111;
defw 0b00000011; blue
defw 0b00100011;
defw 0b01000011;
defw 0b01100011;
defw 0b10000011;
defw 0b10100011;
defw 0b11100011;
defw 0b11100010;
defw 0b11100001;
defw 0b11100000; red
defw 0b11100100;
defw 0b11101000;
defw 0b11101100;
defw 0b11110000;
defw 0b11110100;
defw 0b11111000;
defw 0b11111100; yellow
defw 0b11011100;
defw 0b10111100;
defw 0b10011100;
defw 0b01111100;
defw 0b01011100;
defw 0b00111100;

io_table
led_array defw 0xFF00;
console defw 0xFF40;
spartan_btns defw 0xFF91;
speaker defw 0xFF92;
speaker_busy defw 0xFF93;
keypad defw 0xFF94;
d_pad defw 0xFF95;
vibes defw 0xFF96;
led_pad defw 0xFF97;

org stack_base_address;
stack_base defw stack_base_address
ld r6, stack_base; stack_pointer initialization
ld r7, [r0, #bra_main]; jump to main program


fn_sleep
fn_sleep_loop
ld r2, [r0, #constant];
ld r2, [r2, #sleep_loop_amount-constants_table]
fn_sleep_1ms_loop
subs r2, r2, #1;
bgt fn_sleep_1ms_loop;
subs r1, r1, #1;
bgt fn_sleep_loop;
ld r1, [r6]; load return address
add r6, r6, #1; pop stack
add r7, r0, r1; ret

fn_draw
mov r1, r0;
ld r3, [r0, #screen];
draw_loop
ld r2, [r3, r1]
ld r4, [r0, #io];
ld r4, [r4, #led_array-io_table]
st r2, [r4, r1]
ld r5, [r0, #constant];
ld r5, [r5, #screen_end-constants_table]
add r1, r1, #1;
subs r0, r1, r5;
blt draw_loop;
ld r1, [r6]; load return address
add r6, r6, #1; pop stack
add r7, r0, r1; ret

fn_scroll
ld r1, [r0, #screen]
add r1, r1, #15;
add r1, r1, #15;
add r1, r1, #15;
add r1, r1, #15; add 63 to r1 which points to screen[7][7]
add r1, r1, #3;
ld r3, [r0, #screen]
scroll_loop
ld r2, [r1]; get color of row
st r2, [r1, #8]; copy color down one row
st r0, [r1]; clear prev cell
sub r1, r1, #1; decrement loop
subs r0, r1, r3;
bge scroll_loop;
ld r1, [r6]; load return address
add r6, r6, #1; pop stack
add r7, r0, r1; ret

fn_trim
ld r1, [r0, #constant]
ld r1, [r1, #trim_loop_start_i-constants_table]
trim_loop
ld r2, [r1];
ld r3, [r1, #8];
adds r0, r0, r3;
bne skip_trim;
st r2, [r1, #8]; copy color down one row
st r0, [r1]; clear prev cell
skip_trim
sub r1, r1, #1; decrement loop
ld r2, [r0, #constant]
ld r2, [r2, #trim_loop_end_i-constants_table]
subs r0, r1, r2;
bge trim_loop;
ld r1, [r6]; load return address
add r6, r6, #1; pop stack
add r7, r0, r1; ret

fn_right
ld r4, [r0, #global]; get the mem index for the active piece pointer
ld r1, [r4, #active_size-globals_table]; i = active_size
sub r1, r1, #1; i = active_size -1
right_loop
ld r3, [r4, r1]; de-reference activex
ld r2, [r3]; load colour of piece
add r5, r3, #1; r5 stores the piece to the right of active
ld r3, [r0, #constant]; r3 holds the position of the destination pixel when we need warp
ld r3, [r3, #warp_position-constants_table]
subs r0, r5, r3;
blt skip_warp;
sub r5, r5, #8;
skip_warp;
st r2, [r5]; copy color right one column
ld r3, [r4, r1]; de-reference pointer
st r0, [r3]; clear prev cell
st r5, [r4, r1]; update active pointer
subs r1, r1, #1; i --count_row
bge right_loop;
ld r1, [r6]; load return address
add r6, r6, #1; pop stack
add r7, r0, r1; ret

fn_blit_level
ld r3, [r0, #global];
ld r5, [r3, #active_size-globals_table]; load active_size to r5
adds r0, r0, r5;
bgt skip_exit;
ld r1, [r0, #jump];
ld r7, [r1, #bra_game_over-jump_table]
skip_exit
sub r5, r5, #1; set the active_size - 1 -> r5
ld r2, [r0, #screen];
add r2, r2, #15;
add r2, r2, #15;
add r2, r2, #2;
ld r3, [r0, #global];
ld r3, [r3, #color_pointer-globals_table]; r3 = color pointer
ld r4, [r0, #color]; r4 = color_table
ld r3, [r4, r3]; load the color from the table
ld r4, [r0, #global];
blit_level_loop
st r3, [r2];
st r2, [r4, r5]; set the activex var
sub r2, r2, #1;
subs r5, r5, #1;
bge blit_level_loop;
ld r3, [r0, #global];
ld r3, [r3, #color_pointer-globals_table]; r3 = color pointer
add r3, r3, #1; increment color_pointer
ld r2, [r0, #constant]
ld r2, [r2, #max_color_pointer-constants_table]
subs r0, r3, r2; r0 = color_pointer - max_color
ble skip_color_modulus;
mov r3, r0;
skip_color_modulus;
ld r2, [r0, #global];
st r3, [r2, #color_pointer-globals_table]; update global color_pointer
ret_blit_level
ld r1, [r6]; load return address
add r6, r6, #1; pop stack
add r7, r0, r1; ret

fn_count_row
mov r3, r0;
ld r1, [r0, #constant];
ld r1, [r1, #count_loop_start_i-constants_table]
count_loop
ld r2, [r1];
adds r0, r0, r2;
beq skip_increment_count;
add r3, r3, #1;
skip_increment_count;
add r1, r1, #1; i++
ld r2, [r0, #constant];
ld r2, [r2, #count_loop_end_i-constants_table]
subs r0, r1, r2;
ble count_loop;
ld r1, [r0, #global];
st r3, [r1, #active_size-globals_table]; store the count to active_size
adds r0, r0, r3
ld r1, [r6]; load return address
add r6, r6, #1; pop stack
add r7, r0, r1; ret

fn_print_base
ld r2, [r0, #io];
ld r2, [r2, #console-io_table]
ld r3, [r0, #global];
add r3, r3, #score_message-globals_table; r3 points to score_message
mov r1, r0;
print_base_loop
ld r4, [r3, r1]; load char from score_message
adds r0, r0, r4; check if loaded character is terminator
beq ret_print_base; exit early in that case
st r4, [r2, r1]; print char to LCD screen
add r1, r1, #1; increment i
bal print_base_loop;
ret_print_base
ld r1, [r6]; load return address
add r6, r6, #1; pop stack
add r7, r0, r1; ret

fn_print_score
ld r1, [r0, #global];
ld r1, [r1, #score-globals_table]; r1 = score
mov r3, r0; clear r3 (tens count)
sub_10_loop
subs r0, r1, #10;
blt sub_10_loop_end
sub r1, r1, #10;
add r3, r3, #1; increment tens count
bal sub_10_loop;
sub_10_loop_end
mov r4, r0; clear r4 (hundereds count)
sub_100_loop
subs r0, r3, #10;
blt sub_100_loop_end
sub r3, r3, #10;
add r4, r4, #1; increment hundereds count
bal sub_100_loop;
sub_100_loop_end;
ld r2, [r0, #constant];
ld r2, [r2, #zero_ascii-constants_table]
add r1, r1, r2; calculate ascii of score (units place)
add r3, r3, r2; calculate ascii of score (tens place)
add r4, r4, r2; calculate ascii of score (hundereds place)
ld r2, [r0, #io];
ld r2, [r2, #console-io_table]
add r2, r2, #10;
add r2, r2, #10; add 20 to r2 to point to the second row of the LCD
st r1, [r2, #9]; print the units place of score
st r3, [r2, #8]; print the tens place of score
st r4, [r2, #7]; print the hundereds place of score
ld r1, [r6]; load return address
add r6, r6, #1; pop stack
add r7, r0, r1; ret


fn_reset; don't push return address to stack for this one or we might overflow
ld r4, [r0, #global];
st r0, [r4, #score-globals_table]; reset score
st r0, [r4, #score_delta-globals_table]; reset score_delta
st r0, [r4, #color_pointer-globals_table]; restore active_color to default
add r1, r0, #4;
st r1, [r4, #active_size-globals_table]; reset active_size
ld r1, [r0, #constant]
ld r1, [r1, #def_sleep_amount-constants_table]
st r1, [r4, #sleep_amount-globals_table]; reset sleep_amount
mov r1, r0; clear r1
ld r3, [r0, #def_screen]
ld r5, [r0, #screen]
clear_screen_loop; for i in range(64)
ld r2, [r3, r1]; load the default colour for some screen var
st r2, [r5, r1]; save to the screen var
ld r4, [r0, #constant]
ld r4, [r4, #screen_end-constants_table]
add r1, r1, #1;
subs r0, r1, r4;
blt clear_screen_loop;
sub r6, r6, #1; get new space on stack
add r1, r7, #3; calculate return address
st r1, [r6]; store return address on stack
ld r1, [r0, #jump];
ld r7, [r1, #bra_fn_draw-jump_table]
ld r7, [r0, #bra_main]; jump to main program

main
sub r6, r6, #1; get new space on stack
add r1, r7, #3; calculate return address
st r1, [r6]; store return address on stack
ld r1, [r0, #jump];
ld r7, [r1, #bra_fn_print_base-jump_table]
sub r6, r6, #1; get new space on stack
add r1, r7, #3; calculate return address
st r1, [r6]; store return address on stack
ld r1, [r0, #jump];
ld r7, [r1, #bra_fn_print_score-jump_table]
sub r6, r6, #1; get new space on stack
add r1, r7, #3; calculate return address
st r1, [r6]; store return address on stack
ld r1, [r0, #jump];
ld r7, [r1, #bra_fn_blit_level-jump_table]
main_loop
sub r6, r6, #1; get new space on stack
add r1, r7, #3; calculate return address
st r1, [r6]; store return address on stack
ld r1, [r0, #jump];
ld r7, [r1, #bra_fn_right-jump_table]
sub r6, r6, #1; get new space on stack
add r1, r7, #3; calculate return address
st r1, [r6]; store return address on stack
ld r1, [r0, #jump];
ld r7, [r1, #bra_fn_trim-jump_table]
sub r6, r6, #1; get new space on stack
add r1, r7, #3; calculate return address
st r1, [r6]; store return address on stack
ld r1, [r0, #jump];
ld r7, [r1, #bra_fn_count_row-jump_table]
bne skip_jump_to_game_over
ld r4, [r0, #global];
sub r6, r6, #1; get new space on stack
add r1, r7, #3; calculate return address
st r1, [r6]; store return address on stack
ld r1, [r0, #jump];
ld r7, [r1, #bra_fn_print_score-jump_table]
ld r1, [r0, #jump];
ld r7, [r1, #bra_game_over-jump_table]
skip_jump_to_game_over;
ld r1, [r4, #score-globals_table]; r1 = score
ld r2, [r4, #score_delta-globals_table]; r2 = score_delta
add r1, r1, r2; update score
st r1, [r4, #score-globals_table]; store score
st r0, [r4, #score_delta-globals_table]; reset score_delta
sub r6, r6, #1; get new space on stack
add r1, r7, #3; calculate return address
st r1, [r6]; store return address on stack
ld r1, [r0, #jump];
ld r7, [r1, #bra_fn_print_score-jump_table]
sub r6, r6, #1; get new space on stack
add r1, r7, #3; calculate return address
st r1, [r6]; store return address on stack
ld r1, [r0, #jump];
ld r7, [r1, #bra_fn_draw-jump_table]
ld r1, [r0, #global];
ld r2, [r1, #sleep_amount-globals_table]; r2 = sleep_amount
st r2, [r1, #main_sleep_loop_i-globals_table]
sleep_loop
ld r3, [r0, #io];
ld r3, [r3, #d_pad-io_table]
ld r3, [r3];
ld r4, [r0, #constant];
ld r4, [r4, #center_btn_val-constants_table]
subs r0, r3, r4; check if center button was pressed
beq skip_keeb_input
ld r3, [r0, #io];
ld r3, [r3, #keypad-io_table]
ld r3, [r3];
subs r0, r3, r4; check if center keypad was pressed
skip_keeb_input
ld r4, [r0, #io]
ld r4, [r4, #led_pad-io_table]
st r3, [r4];
bne skip_main_input;
ld r3, [r0, #io];
ld r3, [r3, #vibes-io_table];
add r1, r0, #1;
st r1, [r3]; turn on vibration motor
ld r1, [r0, #constant]
ld r1, [r1, #input_sleep_amount-constants_table]; pass parameter for fn_sleep
sub r6, r6, #1; get new space on stack
add r3, r7, #3; calculate return address
st r3, [r6]; store return address on stack
ld r3, [r0, #jump];
ld r7, [r3, #bra_fn_sleep-jump_table]
ld r3, [r0, #io];
ld r3, [r3, #vibes-io_table];
st r0, [r3]; turn off vibration motor
ld r4, [r0, #global];
ld r1, [r4, #score_delta-globals_table]; r1 = score
add r1, r1, #1; increment score_delta
st r1, [r4, #score_delta-globals_table]; store score_delta
sub r6, r6, #1; get new space on stack
add r1, r7, #3; calculate return address
st r1, [r6]; store return address on stack
ld r1, [r0, #jump];
ld r7, [r1, #bra_fn_count_row-jump_table]
sub r6, r6, #1; get new space on stack
add r1, r7, #3; calculate return address
st r1, [r6]; store return address on stack
ld r1, [r0, #jump];
ld r7, [r1, #bra_fn_scroll-jump_table]
sub r6, r6, #1; get new space on stack
add r1, r7, #3; calculate return address
st r1, [r6]; store return address on stack
ld r1, [r0, #jump];
ld r7, [r1, #bra_fn_blit_level-jump_table]
ld r1, [r0, #global];
ld r1, [r1, #sleep_amount-globals_table];
ld r3, [r0, #global];
ld r3, [r3, #min_sleep_amount-globals_table]; load min_sleep_amount to r3
subs r0, r1, r3;
blt skip_reduce_sleep_amount;
add r3, r0, #15;
add r3, r3, #15;
add r3, r3, #15;
sub r1, r1, r3; reduce the sleep amount (make the piece move faster)
skip_reduce_sleep_amount
ld r4, [r0, #global];
st r1, [r4, #sleep_amount-globals_table]; store sleep amount
skip_main_input
ld r3, [r0, #io]
ld r3, [r3, #spartan_btns-io_table]
ld r3, [r3];
subs r0, r3, #1;
bne skip_reset_input;
ld r1, [r0, #constant]
ld r1, [r1, #input_sleep_amount-constants_table]
sub r6, r6, #1; get new space on stack
add r1, r7, #3; calculate return address
st r1, [r6]; store return address on stack
ld r1, [r0, #jump];
ld r7, [r1, #bra_fn_sleep-jump_table]
ld r1, [r0, #jump];
ld r7, [r1, #bra_fn_reset-jump_table]
skip_reset_input
ld r1, [r0, #global]
ld r2, [r1, #main_sleep_loop_i-globals_table]
subs r2, r2, #1;
st r2, [r1, #main_sleep_loop_i-globals_table]
bgt sleep_loop;
ld r1, [r0, #jump];
ld r7, [r1, #bra_main_loop-jump_table]

; GAME OVER SEQUENCE
game_over
ld r3, [r0, #constant];
add r3, r3, #game_over_message-constants_table;
ld r2, [r0, #io];
ld r2, [r2, #console-io_table]
mov r1, r0;
print_game_over_loop
ld r4, [r3, r1]; load char from game_over_message
adds r0, r0, r4; check if loaded character is terminator
beq exit_print_game_over_loop; exit early in that case
st r4, [r2, r1]; print char to LCD screen
add r1, r1, #1; increment i
bal print_game_over_loop;
exit_print_game_over_loop;
stop_loop;
ld r2, [r0, #io];
ld r2, [r2, #speaker-io_table];
ld r3, [r0, #constant];
ld r3, [r3, #game_over_note-constants_table]
st r3, [r2]; play game_over_note
ld r3, [r0, #io];
ld r3, [r3, #spartan_btns-io_table]
ld r3, [r3];
subs r0, r3, #1;
ld r4, [r0, #io];
ld r4, [r4, #led_pad-io_table]
st r3, [r4];
bne skip_reset_input1;
ld r1, [r0, #constant];
ld r1, [r1, #input_sleep_amount-constants_table];
sub r6, r6, #1; get new space on stack
add r1, r7, #3; calculate return address
st r1, [r6]; store return address on stack
ld r1, [r0, #jump];
ld r7, [r1, #bra_fn_sleep-jump_table]
ld r1, [r0, #jump];
ld r7, [r1, #bra_fn_reset-jump_table]
skip_reset_input1
bal stop_loop;