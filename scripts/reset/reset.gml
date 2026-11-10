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


function dead_restart(){
	with (obj_player1) {
		if (died) {
			if (last_checkpoint != noone) {
				x = last_checkpoint.x;
				y = last_checkpoint.y;
			} else {
				x = obj_game.p1_x;
				y = obj_game.p1_y;
			}

			xspd = 0;
			yspd = 0;
			double_jump = false;
			do_particles = 0;
			died = false;

			
			if (!obj_game.manual_reset) {
				death_count++;

				if (death_count >= 3 and rescue_count < rescue_max and global.timer < 30 * 60) {
					death_count = 0;
					rescue_count++;
					instance_create_layer(x, y - 96, "Instances", obj_clock);
				}
			}
		}
	}

	with (obj_player2) {
		if (died) {
			if (last_checkpoint != noone) {
				x = last_checkpoint.x;
				y = last_checkpoint.y;
			} else {
				x = obj_game.p2_x;
				y = obj_game.p2_y;
			}

			xspd = 0;
			yspd = 0;
			double_jump = false;
			do_particles = 0;
			died = false;
			
			if (!obj_game.manual_reset) {
				death_count++;

				if (death_count >= 3 and rescue_count < rescue_max and global.timer < 30 * 60) {
					death_count = 0;
					rescue_count++;
					instance_create_layer(x, y - 96, "Instances", obj_clock);
				}
			}
		}
	}
}
	