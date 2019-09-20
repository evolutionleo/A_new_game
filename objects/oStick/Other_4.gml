/// @description 
if(room_height == 1024) {
x = 32*5
y = room_height - 32*6
image_xscale = 0.5
image_yscale = 0.5
}
else {
x = 32*7
y = room_height - 32*6
image_xscale = 0.75
image_yscale = 0.75
}
startx = x
oStick2.image_xscale = image_xscale * .6
oStick2.image_yscale = image_yscale * .6
oStick2.x = x
oStick2.y = y