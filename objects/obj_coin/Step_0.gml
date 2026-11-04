if (place_meeting(x, y, obj_player1) or (place_meeting(x, y, obj_player2))){
	global.coin_counter++;
	instance_destroy();
}