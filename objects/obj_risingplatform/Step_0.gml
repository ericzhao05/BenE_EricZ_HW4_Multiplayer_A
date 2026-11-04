if (instance_exists(trigger)) {
    var old_scale = image_yscale;

    var players = [obj_player1, obj_player2, obj_box];
 

    if (trigger.triggered) {
        y_scale += grow_speed;
    }
    else {
        y_scale -= grow_speed;
    }

    y_scale = clamp(y_scale, 1, max_val);
    image_yscale = y_scale;

    var blocked = false;

    if (image_yscale > old_scale) {
        for (var i = 0; i < 2; i++) {
            with (players[i]) {
                //push upward one pixel at a time until clear.
                while (place_meeting(x, y, obj_risingplatform)) {
                    if (place_meeting(x, y - 1, global.lift_blockers)) 
					{
                        blocked = true;
                        break;
                    }
                    y -= 1;
                }
            }
        }

       // cant move
        if (blocked) {
            image_yscale = old_scale;
            y_scale = old_scale;

            obj_player1.y = old_y[0];
            obj_player2.y = old_y[1];
			obj_box.y = old_y[2];
        }
    }
}