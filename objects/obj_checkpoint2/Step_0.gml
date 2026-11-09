if (place_meeting(x, y, obj_player2)) {
	image_index = 1;
	
	//dont save prev checkpoint
	if (obj_player2.last_checkpoint == noone or x > obj_player2.last_checkpoint.x) {
		obj_player2.last_checkpoint = id;
	}
}