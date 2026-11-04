cam1 = view_camera[0];
cam2 = view_camera[1];

cam_width = camera_get_view_width(cam1);
cam_height = camera_get_view_height(cam1);

cam1_x = 0;
cam1_y = 0;
cam2_x = 0;
cam2_y = 0;

if (instance_exists(obj_player1)) {
    cam1_x = obj_player1.x - cam_width / 2;
    cam1_y = obj_player1.y - cam_height / 2;
}

if (instance_exists(obj_player2)) {
    cam2_x = obj_player2.x - cam_width / 2;
    cam2_y = obj_player2.y - cam_height / 2;
}

cam1_x = clamp(cam1_x, 0, max(0, room_width - cam_width));
cam1_y = clamp(cam1_y, 800, max(800, room_height - cam_height));

cam2_x = clamp(cam2_x, 0, max(0, room_width - cam_width));
cam2_y = clamp(cam2_y, 0, max(0, 800 - cam_height));

camera_set_view_pos(cam1, cam1_x, cam1_y);
camera_set_view_pos(cam2, cam2_x, cam2_y);