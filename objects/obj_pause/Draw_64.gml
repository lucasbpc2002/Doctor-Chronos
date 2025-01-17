var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

if(global.pause){
	draw_set_alpha(.8)
	draw_set_color(make_color_rgb(102,45,145))
	draw_rectangle(0,0,gui_w,gui_h,false)
	draw_set_alpha(1)
	draw_set_color(c_white)
	draw_set_font(fnt_titulo_pause)
	draw_text(gui_w/3,gui_h/2.4, "Jogo pausado")
	draw_set_color(c_white)
	draw_set_font(fnt_button_menu)
	draw_text(gui_w/3,gui_h/1.7, "aperte esc para retomar o jogo")
}