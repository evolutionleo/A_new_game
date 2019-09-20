/// @description 
x = event_data[?"posX"]
y = event_data[?"posY"]
if(distance_to_object(oStick) > 20) {
	x = xprevious
	y = yprevious
}
if(x > oStick.x+30)
	kright = true
else
	kright = false

if(x < oStick.x-30)
	kleft = true
else
	kleft = false
	
if(y > oStick.y+30)
	kdown = true
else
	kdown = false

if(y < oStick.y-30)
	kup = true
else
	kup = false