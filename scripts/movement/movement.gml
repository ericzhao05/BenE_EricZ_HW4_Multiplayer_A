function init_movement(){
	xspd = 0;
	yspd = 0;
}

function move_collide(wall){
	for (var i = 0; i < abs(xspd); i += 1) {
	    var step_x = sign(xspd);

	  
	    var box = instance_place(x + step_x, y, obj_box);
	    var box_old_x = 0;

	    if (box != noone) {
	        box_old_x = box.x;

	        with (box) {
	            if (!place_meeting(x + step_x, y, wall)) {
	                x += step_x;
	            }
	        }
	    }

	    
	    if (!place_meeting(x + step_x, y, wall)) {
	        var rider = instance_place(
	            x, y - 1, [obj_player1, obj_player2]
	        );

	        x += step_x;

	      
	        if (rider != noone) {
	            with (rider) {
	                if (!place_meeting(x + step_x, y, wall)) {
	                    x += step_x;
	                }
	            }
	        }
	    }
	    else {
	       
	        if (box != noone) {
	            box.x = box_old_x;
	        }

	        xspd = 0;
	        break;
	    }
	}


	yspd += grav;

	for (var j = 0; j < abs(yspd); j += 1) {
	    var step_y = sign(yspd);

	    var top_player = noone;
	    var top_old_y = 0;
	    var blocked = false;

	   
	    //workaround for box collision in y
		if (!place_meeting(x, y + step_y, obj_box)){
		if (step_y < 0) {
	        top_player = instance_place(x, y - 1, [obj_player1, obj_player2]);

	        if (top_player != noone) {
	            top_old_y = top_player.y;

	           
	            with (top_player) {
	                if (!place_meeting(x, y - 1, wall)) {
	                    y -= 1;
	                }
	                else {
	                    blocked = true;
	                }
	            }
	        }
	    }

	    //check whether the lower player can move.
	    if (!blocked) {
	        if (place_meeting(x, y + step_y, wall)) {
	            blocked = true;
	        }
	    }

	    if (blocked) {
	        // undom if fail
	        if (top_player != noone) {
	            top_player.y = top_old_y;
	        }

	        yspd = 0;
	        break;
	    }
	    else {
	        y += step_y;
	    }
	} else{
		yspd = 0;
	}
	}

}

function player_movement(collidebles){
	var hmove = keyboard_check(key_right) - keyboard_check(key_left);
	var jump = keyboard_check_pressed(key_jump);
	var grounded = place_meeting(x, y + 1, collidebles) || place_meeting (x, y + 1, obj_box);

	xspd = move * hmove;

	if (grounded){
		if(keyboard_check_pressed(key_jump)){
			audio_play_sound(sfx_jump, 0, false);
		}
		
		double_jump = false;
	}

	if (jump){
		if (grounded){
			yspd = -jump_strength;
		} else if (can_double_jump && !double_jump){
			yspd = -jump_strength;
			double_jump = true;
		}
	}
	
	
	if (place_meeting(x, y, obj_death) || y > room_height) {
		audio_play_sound(sfx_death, 0, false);
	    died = true;
	}

	if (place_meeting(x, y+1, obj_death)){
	
		if (do_particles == 0){
			do_particles = 1;
		}
	}

	if (do_particles == 1) {
		spawn_particles(x, y, 50);
		do_particles = 2;
	}
	
	if (place_meeting(x, y+1, obj_trampoline)){
		yspd = -1.5 * jump_strength;
	}

	move_collide(collidebles);
}
