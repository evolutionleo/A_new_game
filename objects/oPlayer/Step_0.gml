/// @description Move
for(var i = 0; i < 6; i++) {
	if(gamepad_is_connected(i)) {
		device = i;
		break;
	}
}

sprite_index = oPlayer_stats.skin

kup = false
kdown = false
kright = false
kleft = false

if(!instance_exists(oPlayer2) and keyboard_check_pressed(vk_up)) {
	oObstacle_manager.player = 2
	room_restart()
}
if(!instance_exists(oPlayer3) and gamepad_is_connected(device)) {
	oObstacle_manager.player = 3
	room_restart()
}

//with(oButton) {
	//if(button_id == "up" and kup)
	//	other.kup = true
//	else if(kleft)
//		other.kleft = true
//	else if(kright)
//		other.kright = true
//	else if(kab)
//		other.kab = true
//	else if(kdown)
//		other.kdown = true
//}
if(object_index == oPlayer3) {
	//kup = gamepad_button_check(device,gp_padu)
	//kup_press = gamepad_button_check_pressed(device,gp_padu)
	//kleft = gamepad_button_check(device,gp_padl)
	//kright = gamepad_button_check(device,gp_padr)
	//kdown = gamepad_button_check(device,gp_padd)
	kup = gamepad_button_check(device,gp_face1) || gamepad_button_check(device,gp_padu)
	kup_press = gamepad_button_check_pressed(device,gp_face1) || gamepad_button_check_pressed(device,gp_padu)
	kleft = gamepad_button_check(device,gp_padl) || gamepad_axis_value(device,gp_axislh) < -0.2
	kright = gamepad_button_check(device,gp_padr) || gamepad_axis_value(device,gp_axislh) > 0.2
	kdown = gamepad_button_check(device,gp_padd) || gamepad_axis_value(device,gp_axislv) > 0.2
}
else if(object_index == oPlayer2){
	kup = keyboard_check(vk_up)
	kup_press = keyboard_check_pressed(vk_up)
	kleft = keyboard_check(vk_left)
	kdown = keyboard_check(vk_down)
	kright = keyboard_check(vk_right)
}
else {

	with(oStick2) {
		other.kup = kup
		other.kdown = kdown
		other.kleft = kleft
		other.kright = kright
	}
	kup += keyboard_check(ord("W"))
	kup_press = keyboard_check_pressed(ord("W")) 
	kleft += keyboard_check(ord("A")) 
	kdown += keyboard_check(ord("S"))
	kright += keyboard_check(ord("D"))
	
	count = 0
	with(oPlayer) {
		if(image_index == 1)
			other.count++
		else break;
	}
	if(count == 1 + instance_exists(oPlayer2) + instance_exists(oPlayer3))
		room_restart()
}

move = kright - kleft

if(kup and place_meeting(x,y+1,oWall)) {
	vspeed -= jump_height
}
else if(place_meeting(x,y+1,oPlayer) and kup_press) {
	vspeed -= jump_height
	var _p = instance_place(x,y,oPlayer)
	_p.vspeed += jump_height
}
else if(kup_press and flying) {
	vspeed = -jump_height/2
}
if(kdown)
	vspeed += 0.3

if(kright) hdir = 1
if(kleft) hdir = -1

hspeed += move * walksp
vspeed += grv

if(hspeed > max_hspeed) hspeed = max_hspeed
if(hspeed < -max_hspeed) hspeed = -max_hspeed
if(vspeed > max_vspeed) vspeed = max_vspeed
if(vspeed < -max_vspeed) vspeed = -max_vspeed

hspeed -= sign(hspeed)*friction_
if(hspeed < friction_ and hspeed > -friction_) hspeed = 0

//if(instance_exists(oPlayer2)) {
//	if(object_index == oPlayer2)
//		var p = oPlayer
//	else
//		var p = oPlayer2
	
//	if(place_meeting(x+hspeed,y,p)) {
//		while(!place_meeting(x+sign(hspeed),y,p)) {
//			x += sign(hspeed)
//		}
//		hspeed = 0
//		p.hspeed = 0
//	}
	
	
//	if(place_meeting(x,y+vspeed-p.vspeed,p)) {
//		while(!place_meeting(x,y+sign(vspeed),p)) {
//			y += sign(vspeed)
//		}
//		vspeed = 0
//		p.vspeed = 0
//	}
	
	//if(place_meeting(x,y,p)) {
	//	while(place_meeting(x,y,p)) {
	//		if(x > p.x+5)
	//			x++
	//		else if(x < p.x-5)
	//			x--
	//		if(y > p.y+5)
	//			y++
	//		else if(y < p.y-5)
	//			y--
			//x--
			//y--
			
	//	}
	//	hspeed = 0
	//	vspeed = 0
		
	//}
//}

//var _wall = instance_nearest(x,y,oWall)
if(place_meeting(x+hspeed,y,oWall)) {
//_wall.hspeed,y,oWall)) {
	while(!place_meeting(x+sign(hspeed),y,oWall)) {
		x += sign(hspeed)
	}
	hspeed = 0
}


if(place_meeting(x,y+vspeed,oWall)) {
//-_wall.vspeed,oWall)) {
	while(!place_meeting(x,y+sign(vspeed),oWall)) {
		y += sign(vspeed)
	}
	vspeed = 0
}

//if(place_meeting(x+hspeed,y+vspeed,oWall)) {
//	while(!place_meeting(x+sign(hspeed),y+sign(vspeed),oWall)) {
//		x += sign(hspeed)
//		y += sign(vspeed)
//	}
//	hspeed = 0
//	vspeed = 0
//}

if(place_meeting(x,y,oKillbox) or place_meeting(x,y,oKillbox)) { // EXPERIMENTAL
//room_restart()
	if(!invincible) {
		image_index = 1
	}
}
if(place_meeting(x,y,oDoor)) room_goto_next()