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

   // remember old pos
    var old_y = [0, 0, 0];
    for (var i = 0; i < 3; i++) {
        if (instance_exists(players[i])) {
            old_y[i] = players[i].y;
        }
    }

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

           
            for (var i = 0; i < 3; i++) {
                if (instance_exists(players[i])) {
                    players[i].y = old_y[i];
                }
            }
        }
    }

    // puulling player down
    if (image_yscale < old_scale) {
        var drop = ceil((old_scale - image_yscale) * sprite_get_height(sprite_index)) + 1;
        var lift = id;

        for (var i = 0; i < 3; i++) {
            with (players[i]) {
                if (yspd >= 0 and !place_meeting(x, y + 1, lift) and place_meeting(x, y + drop, lift)) {
                    while (!place_meeting(x, y + 1, global.collideble)) {
                        y += 1;
                    }
                }
            }
        }
    }
}
