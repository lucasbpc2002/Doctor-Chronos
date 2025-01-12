
function scr_menu_buttons(_nome,_x,_y){
button_over = false; // Variável para indicar se o mouse está sobre o botão
draw_self();
if (mouse_x >= x && mouse_x <= x + 128 && mouse_y >= y && mouse_y <= y + 64 || (point_in_rectangle(mouse_x, mouse_y, bbox_left, bbox_top, bbox_right, bbox_bottom))
) {
//draw_set_color(make_color_rgb(133, 96, 169));
draw_set_valign(fa_middle);
draw_set_font(fnt_button_menu);
draw_text(_x, _y,_nome);
button_over = true;
image_blend = c_white; 
image_alpha =0.5;


}else{
button_over = false;
draw_set_color(c_white);
draw_set_font(fnt_button_menu);
draw_set_valign(fa_middle);
draw_text(_x, _y,_nome);
image_blend = c_white; 
image_alpha = 1; 

}

draw_set_font(-1);
draw_set_color(-1);  // Define a cor do texto como branco
draw_set_halign(-1);
draw_set_valign(-1);
}