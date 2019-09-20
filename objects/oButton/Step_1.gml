/// @description 
var pressed = (device_mouse_check_button(0,mb_left) or device_mouse_check_button(1,mb_left) ) and distance_to_point(mouse_x,mouse_y) < 5

x = startx + camera_get_view_x(view_camera[0])

if((button_id == "ability" or button_id == "ability2") and  (oObstacle_manager.ability == "super jump" or oObstacle_manager.ability == "flight"))
	visible = false
else
	visible = true

if(pressed) {
	if(button_id == "jump")
		kup = true
	if(button_id == "right")
		kright = true
	if(button_id == "left")
		kleft = true
	if(button_id == "down")
		kdown = true
	 if(button_id == "ability")
		kab = true
	if(button_id == "ability2")
		kab2 = true
}
else {
	if(button_id == "jump")
		kup = false
	if(button_id == "right")
		kright = false
	if(button_id == "left")
		kleft = false
	if(button_id == "down")
		kdown = false
	if(button_id == "ability")
		kab = false
	if(button_id == "ability2")
		kab2 = false
}
