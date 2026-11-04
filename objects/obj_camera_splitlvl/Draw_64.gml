var gui_width = display_get_gui_width();
var middle_y = display_get_gui_height() / 2;

draw_set_alpha(1);
draw_set_color(c_white);

// draw the line
draw_rectangle(
    0, middle_y - 2,
    gui_width, middle_y + 2,
    false
);