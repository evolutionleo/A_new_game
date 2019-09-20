/// @description Alarm 0
score = 0
if(room == tutorial) {
	alarm[3] = 2000
}
else if(room == room_menu) {
	if(!file_exists("ne_lez.ini"))
		room_goto_next()
	//else
		//room_goto(infinite2)
}
else if(room == room0)
	alarm[3] = 1500
	//alarm[3] = 1
else if(room == room2)
	alarm[3] = 3000
else if(room == room3)
	alarm[3] = 2000
else if(room == infinite1 or room == infinite2)
	alarm[3] = 100