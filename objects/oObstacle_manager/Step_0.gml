/// @description 

kab2 = false

with(oButton) {
	if(button_id == "ability") {
		other.kab = kab
	}
	else if(button_id == "ability2") {
		other.kab2 = kab2
	}
}
kab2 += mouse_check_button(mb_right)
if(!instance_exists(oButton))
	kab = mouse_check_button(mb_left)

if(room != infinite1) { // ОЧЕНЬ ВАЖНО!
with(oKillbox) {
	if(group == 1) {
		if(room == room0 and other.alarm[3] < 1500)
			hspeed = 2
		else if(room == room2 or (room == room3 and other.alarm[3] < 3000))
			vspeed = 2
		else if(room == tutorial)
			hspeed = 1
	}
	if(group == 2) {
		if(room == room0 and other.alarm[3] < 1000)
			hspeed = -2
		else if(room == room2 and other.alarm[3] < 1500)
			vspeed = -2
		else if(room == room3 and other.alarm[3] < 1500)
			vspeed = -2
		else if(room == tutorial and other.alarm[3] < 1000)
			vspeed = 1
	}
	if(group == 3) {
		if(room == room0 and other.alarm[3] < 600)
			vspeed = 2
	}
}
with(oWall) {
	if(moving == 1) {
		if(room == room3 and other.alarm[3] < 1800)
			vspeed = -1
		if(room == room3 and other.alarm[3] < 900)
			vspeed = 1
	}
}
}

if(ability == "time warp") {
	if(kab) {
		game_set_speed(60,gamespeed_fps)
	}
	else if(kab2) {
		game_set_speed(180,gamespeed_fps)
	}
	else {
		game_set_speed(120,gamespeed_fps)
	}
	
	var _speed = game_get_speed(gamespeed_fps)
	if(_speed > 120)
		fuel+= 0.5
	else if(_speed < 120)
		fuel-=1
	else fuel += 0.1
}
else if(ability == "invincibility") {
	if(kab and fuel >= 0.5) {
		fuel -= 0.5
		#region Alarm
		with(oPlayer) {
			if(alarm[1] == -1)
				alarm[1] = 1
			if(alarm[2] == -1)
				alarm[2] = 11
			invincible = true
		}
		with(oPlayer2) {
			if(alarm[1] == -1)
				alarm[1] = 1
			if(alarm[2] == -1)
				alarm[2] = 11
			invincible = true
		}
	}
	else {
		fuel+=0.2
		with(oPlayer) {
			invincible = false
		}
		with(oPlayer2) {
			invincible = false
		}
		#endregion
	}
}
else if(ability == "flight") {
	
}
else if(ability == "super jump" and instance_exists(oPlayer)) {
	oPlayer.jump_height = 14
}

if(fuel <= 0) {
	fuel = 0;
	if(game_get_speed(gamespeed_fps) < 120 and ability == "time warp")
		game_set_speed(120,gamespeed_fps)
}
if(fuel > max_fuel)
	fuel = max_fuel