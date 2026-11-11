image_index = 0;

pressed = place_meeting(x, y, obj_player1) or place_meeting(x, y, obj_player2) or place_meeting(x, y, obj_box);

if (pressed) {
	if(!sound_played){
		audio_play_sound(sfx_click, 0, false);
		sound_played = true;
	}
	
	hold_timer = hold_seconds * game_get_speed(gamespeed_fps);
	triggered = true;
}
else if (hold_timer > 0) {
	hold_timer--;
	triggered = true;
}
else {
	triggered = false;
	sound_played = false;
}

if (triggered) {
	image_index = 1;
}
