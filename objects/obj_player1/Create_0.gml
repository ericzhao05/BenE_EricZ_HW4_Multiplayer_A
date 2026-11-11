//controls
key_left  = ord("A");
key_right = ord("D");
key_jump  = ord("W");

mask_index = spr_player1_idle;

//tuning variables
move = 3;              
grav = 0.3;
jump_strength = 11;    
can_double_jump = false; 

double_jump = false;

do_particles = 0;

died = false;

depth = -10;

last_checkpoint = noone; 

death_count = 0;

rescue_count = 0;
rescue_max = 2;

init_movement();


