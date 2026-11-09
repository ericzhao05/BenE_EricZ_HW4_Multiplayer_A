image_index = 0;

pressed = place_meeting(x, y, obj_player1) or place_meeting(x, y, obj_player2) or place_meeting(x, y, obj_box);

if (pressed) {
	hold_timer = hold_seconds * game_get_speed(gamespeed_fps);
	triggered = true;
}
else if (hold_timer > 0) {
	hold_timer--;
	triggered = true;
}
else {
	triggered = false;
}

if (triggered) {
	image_index = 1;
}
