global.coin_counter = 0;

level_complete = false;
countdown = 30;

player1_at_exit = false;
player2_at_exit = false;

global.collideble = [
    obj_wall,
    obj_door,
    obj_player1,
    obj_player2,
    obj_risingplatform,
    obj_brickwall,
    obj_platform
];

global.lift_blockers = [
    obj_wall,
    obj_brickwall,
    obj_door,
    obj_platform,
    obj_player1,
    obj_player2
];