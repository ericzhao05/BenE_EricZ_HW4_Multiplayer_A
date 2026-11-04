
cam = view_camera[0];

cam_width = camera_get_view_width(cam);
cam_height = camera_get_view_height(cam);

cam_x = 0;
cam_y = 0;


if (instance_exists(obj_player1) and instance_exists(obj_player2)) {
    var midpoint_x = (obj_player1.x + obj_player2.x) / 2;
    var midpoint_y = (obj_player1.y + obj_player2.y) / 2;

    cam_x = midpoint_x - cam_width / 2;
    cam_y = midpoint_y - cam_height / 2;
}


cam_x = clamp(cam_x, 0, max(0, room_width - cam_width));
cam_y = clamp(cam_y, 0, max(0, room_height - cam_height));

camera_set_view_pos(cam, cam_x, cam_y);