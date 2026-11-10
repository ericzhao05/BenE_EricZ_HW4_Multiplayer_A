
//controls
key_left  = vk_left;
key_right = vk_right;
key_jump  = vk_up;

//tuning variables
move = 6;
grav = 0.3;
jump_strength = 9;
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
