if (!level_complete) {
    player1_at_exit = false;
    player2_at_exit = false;

    with (obj_finish_collide) {
        other.player1_at_exit = place_meeting(x, y, obj_player1);
        other.player2_at_exit = place_meeting(x, y, obj_player2);
    }

    if (player1_at_exit and player2_at_exit) {
        level_complete = true;
    }
    else if (player1_at_exit or player2_at_exit) {
        countdown = max(0, countdown - 1 / 60);
    }
    else {
        countdown = 30;
    }
}