var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

draw_set_color(make_color_rgb(102,45,145))
draw_set_font(fnt_titulo_pause)
draw_text(gui_w/2.2,gui_h/3, global.score)