gpu_set_depth(0);
if (room == Room5){
	draw_set_font(fnt_timer_med);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);


	draw_text(room_width/2, room_height/2 - 100, "Final Score")
	draw_text(room_width/2, room_height/2 + 100, string(global.final_score) + " seconds")

	//reset
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_font(-1);
} 