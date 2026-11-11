

if (room != Room5){
	var total_seconds = ceil(global.timer / 60);

	var minutes = total_seconds div 60;
	var seconds = total_seconds mod 60;

	var minutes_text = string(minutes);
	if (minutes < 10) {
		minutes_text = "0" + minutes_text;
	}

	var seconds_text = string(seconds);
	if (seconds < 10) {
		seconds_text = "0" + seconds_text;
	}

	var timer_text = minutes_text + ":" + seconds_text;


	var cam = view_camera[view_current];
	var view_w = camera_get_view_width(cam);
	var view_h = camera_get_view_height(cam);
	var center_x = camera_get_view_x(cam) + view_w / 2;
	var center_y = camera_get_view_y(cam) + view_h / 2;


	draw_set_font(fnt_timer_big);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	if (total_seconds <= 10) {
		draw_set_color(c_red);
	} else {
		draw_set_color(c_white);
	}

	draw_text(center_x, center_y, timer_text)

		//reset
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_font(-1);
} else {
	draw_set_font(fnt_timer_big);
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