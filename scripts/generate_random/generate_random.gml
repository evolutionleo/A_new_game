var _id = argument0

switch(_id) {
	case 1: {
		var _count = room_height/64
		var _count2 = room_width/64
		if(room == infinite1) {
			_count2 /= 2
		}
		if(room == infinite1)
			var _rand = irandom_range(2,_count2-1)
		else
			var _rand = irandom_range(3,_count2-2)
		//var _rand_speed = random_range(1.75,2.25)-1
		var _rand_speed = 2
		var _5050 = irandom(1)
		//if(room == infinite2) {
			
		//}	
		//else {
			
		//}
		for(var i = 0; i < _count2; i++) {
			if(i < _rand - 1 or i > _rand + 1 and room == infinite2 or (i < _rand - 1 or i > _rand + 1 and room == infinite1)) {
				var _block = instance_create_layer(-64+_5050*(room_width+256),64*i,"Blocks",oKillbox)
				_block.hspeed = _rand_speed - 2*_rand_speed*_5050
			}
		}
		if(score > 8) {
			for(var j = 1+_5050; j < _count; j+=5) {
				var _block = instance_create_layer(64*j,-128,"Blocks",oKillbox)
				_block.vspeed = _rand_speed+_rand_speed*score > 20
				_block.image_xscale = 0.5
				_block.image_yscale = 0.5
			}
		}
		break;
	}
}