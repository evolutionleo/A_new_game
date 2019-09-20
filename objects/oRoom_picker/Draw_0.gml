/// @description Sas

draw_set_font(fRoom)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
for(var i = 0; i < room_last; i++) {
	draw_text_color(10+i*128,50,string(i),c_blue,c_blue,c_blue,c_blue,100)
}
for(var i = 0; i < array_length_1d(oObstacle_manager.abilities); i++) {
	draw_text_color(10+i*256,100,oObstacle_manager.abilities[i],c_blue,c_blue,c_blue,c_blue,100)
}