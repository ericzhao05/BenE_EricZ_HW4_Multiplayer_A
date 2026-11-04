// Inherit the parent event
event_inherited();

if (!platform_saved) {
    if (instance_exists(trigger)) {
        platform_x = trigger.x;
        platform_y = trigger.y;
        platform_layer = trigger.layer;

        platform_scale_x = trigger.image_xscale;
        platform_scale_y = trigger.image_yscale;
        platform_angle = trigger.image_angle;

        starts_enabled = trigger.enabled;

        platform_saved = true;
    }
}

if (platform_saved) {
    var should_exist = starts_enabled or triggered;
	
	if (triggered) {
	    should_exist = !starts_enabled;
	}


    if (!should_exist) {
        if (instance_exists(trigger)) {
            instance_destroy(trigger);
        }
    }
    else {
        if (!instance_exists(trigger)) {
            trigger = instance_create_layer(
                platform_x,
                platform_y,
                platform_layer,
                obj_platform
            );

            trigger.image_xscale = platform_scale_x;
            trigger.image_yscale = platform_scale_y;
            trigger.image_angle = platform_angle;

           
            with (trigger) {
                if (place_meeting(x, y, obj_player1) or place_meeting(x, y, obj_player2)) {
                    instance_destroy();
                }
            }
        }
    }
}