if (place_meeting(x, y, obj_player1) or (place_meeting(x, y, obj_player2))){
	global.coin_counter++;
	global.timer += 15 * 60; 

	instance_create_depth(x, y - 32, -20, obj_time_popup);

	instance_destroy();
}