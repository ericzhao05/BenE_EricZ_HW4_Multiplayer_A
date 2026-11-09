draw_set_font(fnt_msg);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(popup_color);

//fade
draw_set_alpha(lifetime / lifetime_max);

draw_text(x, y, popup_text);


draw_set_alpha(1);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(-1);

