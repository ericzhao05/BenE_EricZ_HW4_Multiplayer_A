if (instance_exists(obj_player1) and instance_exists(obj_player2)) {

   
    var midpoint_x = (obj_player1.x + obj_player2.x) / 2;
    var midpoint_y = (obj_player1.y + obj_player2.y) / 2;

    
    cam_x = lerp(cam_x, midpoint_x - cam_width / 2, 0.1);
    cam_y = lerp(cam_y, midpoint_y - cam_height / 2, 0.1);

    cam_x = clamp(cam_x, 0, max(0, room_width - cam_width));
    cam_y = clamp(cam_y, 0, max(0, room_height - cam_height));

    camera_set_view_pos(cam, cam_x, cam_y);
}