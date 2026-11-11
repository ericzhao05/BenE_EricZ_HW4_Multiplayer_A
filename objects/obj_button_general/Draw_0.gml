draw_self();


if (hold_seconds > 0 and triggered) {
	var seconds_left = hold_timer / 60;

	draw_set_font(fnt_msg);
	draw_set_halign(fa_center);
	draw_set_valign(fa_bottom);
	draw_set_color(timer_color);

	draw_text(x, bbox_top - 4, string_format(seconds_left, 0, 1) + "s");

	draw_set_color(c_white);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_font(-1);
}
