/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

draw_self();
if (mouse_x >= x && mouse_x <= x + 128 && mouse_y >= y && mouse_y <= y + 64) {
draw_set_color(c_purple);
draw_set_valign(fa_middle);
draw_set_font(Font_button);
draw_text(x-40, y,"Enviar");
}else{
draw_set_color(c_white);
draw_set_font(Font_button);
draw_set_valign(fa_middle);
draw_text(x-40, y,"Enviar");
}
draw_set_font(-1);
draw_set_color(-1);  // Define a cor do texto como branco
draw_set_halign(-1);
draw_set_valign(-1);