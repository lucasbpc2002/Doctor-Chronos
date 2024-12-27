// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_titulos_fases_rank(_nome, _font){
draw_self();
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(make_color_rgb(135, 129, 190));

// Desenha o título "Cadastro"
//draw_text(x-50, y-50, "Cadastro de Nome");

// Desenha o nome digitado
draw_set_font(_font);
draw_text(x+30, y, _nome);

//reset
draw_set_font(-1);
draw_set_color(-1);  // Define a cor do texto como branco
draw_set_halign(-1);
draw_set_valign(-1);

}