// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_instros(texto){
largura_caixa=30;
altura_caixa=600;
draw_set_font(fnt_button_menu);
draw_set_halign(fa_center)
draw_set_color(c_black); 
   draw_text_ext(x+35,y, texto, largura_caixa, altura_caixa);
}