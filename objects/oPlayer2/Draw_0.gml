/// @description Insert description here
// You can write your code in this editor
if(room == tutorial and oObstacle_manager.alarm[3] > 1800) {
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(fYou)
	draw_text(x,y-40,"Your friend")
}
draw_self()