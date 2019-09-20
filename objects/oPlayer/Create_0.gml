/// @description 
#region Useless stuff
kup = 0
kdown = 0
kleft = 0
kright = 0
kup_press = 0
device = -1

#endregion

for(var i = 0; i < 6; i++) {
	if(gamepad_is_connected(i)) {
		device = i;
		break;
	}
}

hdir = 1
vdir = 1
invincible = false
flying = false
if(room == autoscroller1) {
	walksp = 0.5
	jump_height = 5
}
if(keyboard_check(vk_up)) and !instance_exists(oPlayer2)
{
	var p2 = instance_create_layer(x+128,y,"Player",oPlayer2)
	p2.image_xscale = image_xscale
	p2.image_yscale = image_yscale
}
if(oObstacle_manager.player == 3) and !instance_exists(oPlayer3)
{
	var p3 = instance_create_layer(x+64,y,"Player",oPlayer3)
	p3.image_xscale = image_xscale
	p3.image_yscale = image_yscale
}

if(object_index != oPlayer2 and object_index != oPlayer3) {
	if(instance_exists(oPlayer2)) {
		oPlayer2.image_blend = c_yellow
		oPlayer2.x = x+128
		oPlayer2.y = y
		oPlayer2.image_xscale = image_xscale
		oPlayer2.image_yscale = image_yscale
		oPlayer2.image_index = 0
	}
	if(instance_exists(oPlayer3)) {
		oPlayer3.image_blend = $00FF00
		oPlayer3.x = x+64
		oPlayer3.y = y
		oPlayer3.image_xscale = image_xscale
		oPlayer3.image_yscale = image_yscale
		oPlayer3.image_index = 0
	}
	image_blend = c_red
}
//my_hands = instance_create_layer(x,y,"Instances",oHand)
////my_hands.image_xscale = 0.5
////my_hands.image_yscale = 0.5
//my_sword = instance_create_layer(x,y,"Instances",oSword)
//my_sword.image_xscale = 1.5
//my_sword.image_yscale = 1.5