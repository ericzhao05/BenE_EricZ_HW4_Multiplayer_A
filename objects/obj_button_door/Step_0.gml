// Inherit the parent event
event_inherited();

if (!door_saved) {
    if (instance_exists(trigger)) {
        door_x = trigger.x;
        door_y = trigger.y;
        door_layer = trigger.layer;

        door_scale_x = trigger.image_xscale;
        door_scale_y = trigger.image_yscale;
        door_angle = trigger.image_angle;

        door_saved = true;
    }
}

if (door_saved) {
    if (triggered) {
        if (instance_exists(trigger)) {
            instance_destroy(trigger);
        }
    }
    else {
        if (!instance_exists(trigger)) {
            trigger = instance_create_layer(door_x, door_y, door_layer, obj_door);

            trigger.image_xscale = door_scale_x;
            trigger.image_yscale = door_scale_y;
            trigger.image_angle = door_angle;

         
            with (trigger) {
                if (place_meeting(x, y, obj_player1) or place_meeting(x, y, obj_player2)) {
                    instance_destroy();
                }
            }
        }
    }
}