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
            room_goto_next();
        }
    }
}




if (obj_player1.died || obj_player2.died) {
    room_restart();
}