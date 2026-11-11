var gui_center_x = display_get_gui_width() / 2;

if (room != Room0){
	draw_set_font(fnt_msg);
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);

	if (level_complete) {
		draw_text(gui_center_x, 16, "YOU WIN!");
	}
	else if (player1_at_exit or player2_at_exit) {
		draw_text(gui_center_x, 16, "GET THE OTHER PLAYER!");
	}
	
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


	draw_set_font(fnt_timer_med);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	if (total_seconds <= 10) {
		draw_set_color(c_red);
	} else {
		draw_set_color(c_white);
	}

	draw_text(center_x / 3 + 10, center_y / 3 + 25, timer_text)

	//reset
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_font(-1);
	
} else if (room == Room0){
	//draw_set_font(fnt_timer_med);
	draw_set_halign(fa_center);
	
	//draw_set_colour(#ED008C);
	//draw_text(room_width/2 - 100, room_height/3 - 50, "Hop'n");
	//draw_set_colour(#F8941D);
	//draw_text(room_width/2 + 48, room_height/3 + 50, "Skip");
	//draw_text(room_width/2, room_height/3 + 250, "Hop'n Skip");
	
	draw_set_font(fnt_timer);
	draw_set_colour(c_white);
	draw_text(gui_center_x, 600, "Press Enter to Start");
	draw_text(gui_center_x, 550, "Hold Tab for Controls");
	
	if (instructions){
		draw_text(gui_center_x / 3, 550, "A and D to Move")
		draw_text(gui_center_x / 3, 575, "W to Jump")
		draw_text(gui_center_x * 3/2 + 100, 550, "Left and Right to Move")
		draw_text(gui_center_x * 3/2 + 100, 575, "Up to Jump")
		
		draw_text(gui_center_x * 2 / 3, 550, "R to Restart Level")
		draw_text(gui_center_x * 4/3, 600, "T to Respawn Checkpoint")
	}
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(-1);