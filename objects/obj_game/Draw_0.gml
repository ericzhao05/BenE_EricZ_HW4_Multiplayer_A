if (level_complete) {
    draw_text(40, 40, "LEVEL COMPLETE!");
}
else if (player1_at_exit or player2_at_exit) {
    draw_text(40, 40, "GET THE OTHER PLAYER");
    draw_text(40, 60,
        "TIME LEFT: " + string(floor(countdown)));
}