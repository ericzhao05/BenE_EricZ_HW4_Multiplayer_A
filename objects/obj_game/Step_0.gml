if (room != Room0 and room != Room5){
	if (!level_complete and global.timer > 0) {
		global.timer--;

		if (global.timer <= 0) {
			room_restart(); // time's up
		}
	}


	if (!level_complete) {
	    player1_at_exit = false;
	    player2_at_exit = false;

	    with (obj_player1) {
	        other.player1_at_exit = place_meeting(x, y, obj_win);
	    }

	    with (obj_player2) {
	        other.player2_at_exit = place_meeting(x, y, obj_win);
	    }

	    if (player1_at_exit and player2_at_exit) {
	        level_complete = true;

	        global.final_score += ceil(global.timer / 60);

	        time_source_start(next_room);
	    }
	}

	if (obj_player1.died || obj_player2.died) {
	    time_source_start(dead_timer);
	}

	if (keyboard_check_pressed(ord("R")) and !level_complete) {
		room_restart();
	}

	if (keyboard_check_pressed(ord("T")) and !level_complete) {
		manual_reset = true;

		obj_player1.died = true;
		obj_player2.died = true;
		dead_restart();

		manual_reset = false;
	}
}

if (keyboard_check_pressed(ord("0"))){
	room_goto(Room0);
}
if (keyboard_check_pressed(ord("1"))) {
	room_goto(Room1);
}
if (keyboard_check_pressed(ord("2"))) {
	room_goto(Room2);
}
if (keyboard_check_pressed(ord("3"))) {
	room_goto(Room3);
}
if (keyboard_check_pressed(ord("4"))) {
	room_goto(Room4);
}
