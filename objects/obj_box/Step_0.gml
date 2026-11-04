p_detected = instance_place(x, y, [obj_player1, obj_player2]);

if (p_detected != noone) {
 if (instance_place(x, y, obj_player1)){
	 xspd = 3;
 } else if (instance_place(x, y, obj_player2)){
	 xspd = 5;
 }
 
 if (p_detected.x < x) {
	 if (!place_meeting(x + xspd, y, global.collideble)){
		x += xspd;
	 }
 } else if (p_detected.x > x){
	if (!place_meeting(x - xspd, y, global.collideble)){
		x -= xspd;
	 }
 }
}