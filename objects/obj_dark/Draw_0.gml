
var draw_y = y;

if (fog_direction == -1) {
    draw_y = y - sprite_height;
}

draw_set_alpha(1);
draw_set_color(c_white);


draw_sprite_ext(
    spr_dark, 1,
    x, draw_y,
    image_xscale, image_yscale * fog_direction,
    0, c_white, 1
);


draw_sprite_ext(
    spr_dark, 0,
    x, draw_y,
    image_xscale, image_yscale * fog_direction,
    0, c_white, 1 - light_amount
);