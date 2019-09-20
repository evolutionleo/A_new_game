/// @description Insert description here
// You can write your code in this editor
if(room == infinite1 or room == infinite2) {
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	draw_set_font(fFont)
	draw_text(10,10,"Highscore: "+string(highscore)+"\nScore: "+string(score))
}
if(ability != "flight" and ability != "super jump") {
	var _wid = camera_get_view_width(view_camera[0])
	var _hei = camera_get_view_height(view_camera[0])
	draw_healthbar(10,_hei-40,_wid-10,_hei-10,fuel/max_fuel*100,c_white,c_aqua,c_aqua,0,true,false)
}