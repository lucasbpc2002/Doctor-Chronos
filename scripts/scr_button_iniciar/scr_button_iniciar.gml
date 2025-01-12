// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_button_iniciar(_nome){
button_over = false; // Variável para indicar se o mouse está sobre o botão


draw_self();
if (mouse_x >= x && mouse_x <= x + 128 && mouse_y >= y && mouse_y <= y + 64 || (point_in_rectangle(mouse_x, mouse_y, bbox_left, bbox_top, bbox_right, bbox_bottom))
) {
draw_set_color(make_color_rgb(133, 96, 169));
draw_set_halign(fa_center);
draw_set_font(fnt_button_menu);
draw_text(x+120, y+20,_nome);
button_over = true;
image_blend=make_color_rgb(133, 96, 169);//cor do retangulo
image_alpha =0.255;//opacidade

}else{
button_over = false;
draw_set_color(c_white);
draw_set_font(fnt_button_menu);
draw_set_halign(fa_center)
draw_text(x+120, y+20,_nome);
image_blend=make_color_rgb(102, 45, 145);
image_alpha =2.5;
}
draw_set_font(-1);
draw_set_color(-1);  
draw_set_halign(-1);

}