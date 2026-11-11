if (died) {
	exit;
}

if (xspd != 0) {
	image_xscale = sign(xspd) * base_scale;
}


player_movement(global.collideble);

var on_ground = place_meeting(x, y + 1, global.collideble) || place_meeting(x, y + 1, obj_box);

if (!on_ground) {
    sprite_index = spr_player1_jump;
    image_speed = 0;
    if (yspd < -jump_strength * 0.5) {
	    image_index = 1;
	} else {
	    image_index = 2;
	}
} else if (xspd != 0) {
    sprite_index = spr_player1_walk;
    image_speed = 1;
} else {
    sprite_index = spr_player1_idle;
    image_speed = 1;
}

if (on_ground && yspd < 0 && keyboard_check_pressed(key_jump)) {
    instance_create_depth(x, y, depth + 1, obj_player1_jump_fx);
}