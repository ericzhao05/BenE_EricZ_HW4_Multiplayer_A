draw_set_color(c_white);
draw_set_alpha(1);

if (level_complete) {
    draw_text(view_get_camera(0).x, view_get_camera(0).y / 2, "YOU WIN!");
}
else if (player1_at_exit or player2_at_exit) {
    draw_text(view_get_camera(0).x, view_get_camera(0).y / 2, "GET THE OTHER PLAYER!");
}