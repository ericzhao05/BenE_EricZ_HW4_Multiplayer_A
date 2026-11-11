if (place_meeting(x, y, obj_player1)) {
	if (image_index == 0){
		audio_play_sound(sfx_click, 0, false);
	}
	image_index = 1;

	if (obj_player1.last_checkpoint == noone or x > obj_player1.last_checkpoint.x) {
		obj_player1.last_checkpoint = id;
	}
}
