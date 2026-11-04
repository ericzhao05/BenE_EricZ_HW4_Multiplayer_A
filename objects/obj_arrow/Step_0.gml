y += float_speed * move_direction;

if (y <= start_y - float_distance) {
    y = start_y - float_distance;
    move_direction = 1;
}
else if (y >= start_y) {
    y = start_y;
    move_direction = -1;
}