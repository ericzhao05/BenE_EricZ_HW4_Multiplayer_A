x_range = clamp(x_range, x_placed, x_range_max);

if (x <= x_placed){
	forward = true;
} else if (x >= x_range_max){
	forward = false;
}

if (forward) {
	x += xspd;
} else {
	x -= xspd;
}