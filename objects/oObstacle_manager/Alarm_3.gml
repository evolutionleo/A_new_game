/// @description Move blocks
if(room == infinite1 or room == infinite2) {
	alarm[3] = 500
	generate_random(1)
	with(oKillbox) {
		if(x > room_width+256 or x < -256 or y > room_height or y < -128)
			instance_destroy()
	}
	score++
}
else {
	//if(room == room0) {
	room_goto_next()
	//}
}