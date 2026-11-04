function spawn_particles(_x, _y, _num, _color = c_white){
	for (var i = 0; i < _num; i++){
		with(instance_create_depth(_x, _y, 0, obj_particle)){
			image_blend = _color;
		}
	}
}