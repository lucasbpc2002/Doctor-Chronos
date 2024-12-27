draw_self();
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(make_color_rgb(135, 129, 190));

// Desenha o título "Cadastro"
//draw_text(x-50, y-50, "Cadastro de Nome");

// Desenha o nome digitado
draw_set_font(fnt_1);
draw_text(x+20, y-15, "Menu ");



//reset
draw_set_color(-1);
draw_set_font(-1); 
draw_set_halign(-1);
draw_set_valign(-1);
