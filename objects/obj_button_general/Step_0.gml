
image_index = 0;

triggered = place_meeting(x, y, obj_player1) or place_meeting(x, y, obj_player2);


if (triggered) {
    image_index = 1;
}