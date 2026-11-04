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

        if (room != Room3) {
            time_source_start(next_room);
        }
    }
}




if (obj_player1.died || obj_player2.died) {
    time_source_start(dead_timer);
}

if (keyboard_check_pressed(ord("R"))){
	room_restart();
}