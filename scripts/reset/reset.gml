function reset_player(p1_x, p1_y, p2_x, p2_y) {

    if (instance_exists(obj_player1)) {
        obj_player1.x = p1_x;
        obj_player1.y = p1_y;
      
    }

    if (instance_exists(obj_player2)) {
        obj_player2.x = p2_x;
        obj_player2.y = p2_y;
    }
}
