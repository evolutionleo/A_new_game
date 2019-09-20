/// @description 
var width = 2
var height = 2

for(var hei = 0; hei < height; hei++) {
	for(var wid = 0; wid < width; wid++) {
		var _s = instance_create_layer(128+128*wid,256+128*hei,"Instances",oSkin)
		_s.sprite_index = sPlayer1+hei*height+wid
	}
}