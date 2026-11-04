draw_set_color(c_white);
draw_set_alpha(1);

if (level_complete) {
    draw_text(40, 40, "YOU WIN!");
}
else if (player1_at_exit or player2_at_exit) {
    draw_text(40, 40, "GET THE OTHER PLAYER!");
}