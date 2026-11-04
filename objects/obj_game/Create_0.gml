global.coin_counter = 0;

level_complete = false;
countdown = 30;

player1_at_exit = false;
player2_at_exit = false;

if (instance_exists(obj_player1)) {
    p1_x = obj_player1.x;
    p1_y = obj_player1.y;
}

if (instance_exists(obj_player2)) {
    p2_x = obj_player2.x;
    p2_y = obj_player2.y;
}

global.collideble = [
    obj_wall,
    obj_door,
    obj_player1,
    obj_player2,
    obj_risingplatform,
    obj_brickwall,
    obj_platform,
    obj_box
];

global.lift_blockers = [
    obj_wall,
    obj_brickwall,
    obj_door,
    obj_platform,
    obj_player1,
    obj_player2,
    obj_box
];

p1_x = obj_player1.x;
p1_y = obj_player1.y;
p2_x = obj_player2.x;
p2_y = obj_player2.y;