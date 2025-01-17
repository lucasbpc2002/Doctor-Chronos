// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_buttons_options(_nome, _color){
button_over = false; // Variável para indicar se o mouse está sobre o botão


draw_self();
var altura_caixa = 30;
var largura_caixa =300; 

if (mouse_x >= x && mouse_x <= x + 128 && mouse_y >= y && mouse_y <= y + 64 || (point_in_rectangle(mouse_x, mouse_y, bbox_left, bbox_top, bbox_right, bbox_bottom))
) {
	


draw_set_color(make_color_rgb(133, 96, 169));
draw_set_valign(fa_middle);
draw_set_font(fnt_questions);
 draw_text_ext(x+10,y, _nome, altura_caixa, largura_caixa);


button_over = true;
image_blend=_color;

image_alpha =0.255;
//cor do retangulo
//image_alpha =0.5;//opacidade

}else{
button_over = false;
draw_set_color(c_white);
draw_set_font(fnt_questions);
draw_set_valign(fa_middle);

 draw_text_ext(x+10,y, _nome, altura_caixa,largura_caixa);
image_blend=_color;

image_alpha =2.5;
}

draw_set_font(-1);
draw_set_color(-1);  // Define a cor do texto como branco
draw_set_halign(-1);
draw_set_valign(-1);




}
