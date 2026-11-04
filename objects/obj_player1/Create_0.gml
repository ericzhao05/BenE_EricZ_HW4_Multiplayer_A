//controls
key_left  = ord("A");
key_right = ord("D");
key_jump  = ord("W");

//tuning variables
move = 3;              
grav = 0.3;
jump_strength = 11;    
can_double_jump = false; 

double_jump = false;

do_particles = 0;

died = false;

depth = -10;

init_movement();
