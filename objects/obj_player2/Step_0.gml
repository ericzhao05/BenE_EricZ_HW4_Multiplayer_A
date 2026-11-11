if (died) {
	exit;
}


if (xspd != 0) {
	image_xscale = sign(xspd) * base_scale;
}

player_movement(global.collideble);

var on_ground = place_meeting(x, y + 1, global.collideble) || place_meeting(x, y + 1, obj_box);
if (!on_ground) {
    sprite_index = spr_player2_jump;
    image_speed = 0;
    if (yspd < -jump_strength * 0.5) {
	    image_index = 1;
	} else {
	    image_index = 2;
	}
} else if (xspd != 0) {
    sprite_index = spr_player2_walk;
    image_speed = 1;
} else {
    sprite_index = spr_player2_idle;
    image_speed = 1;
}

if (on_ground && xspd != 0) {
    dust_timer--;
    if (dust_timer <= 0) {
        var dir = sign(xspd);
        var d = instance_create_depth(x - dir * 22, y, depth + 1, obj_player2_walk_fx);
        d.image_xscale = dir;  
        dust_timer = 5;
    }
} else {
    dust_timer = 0;
}

