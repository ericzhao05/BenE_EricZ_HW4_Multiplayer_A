if (room != Room0){
	draw_set_font(fnt_msg);
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);

	var gui_center_x = display_get_gui_width() / 2;

	if (level_complete) {
		draw_text(gui_center_x, 16, "YOU WIN!");
	}
	else if (player1_at_exit or player2_at_exit) {
		draw_text(gui_center_x, 16, "GET THE OTHER PLAYER!");
	}

	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_font(-1);
}