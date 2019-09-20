/// @description 

for(var i = 0; i < room_last; i++) {
	if(mouse_x > 0+128*(i-1) and mouse_x < 128*(i+1) and mouse_y < 75) {
		room_goto(i)
	}
}
for(var i = 0; i < array_length_1d(oObstacle_manager.abilities); i++) {
	if(mouse_x > 0+256*(i-1) and mouse_x < 256*(i+1) and mouse_y > 75 and mouse_y < 150) {
		oObstacle_manager.ability = oObstacle_manager.abilities[i]
	}
}
