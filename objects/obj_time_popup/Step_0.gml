y += yspd;


yspd *= 0.96;

lifetime--;

if (lifetime <= 0) {
	instance_destroy();
}