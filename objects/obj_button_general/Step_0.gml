
image_index = 0;

triggered = place_meeting(x, y, obj_player1) or place_meeting(x, y, obj_player2) or place_meeting(x, y, obj_box);


if (triggered) {
    image_index = 1;
}