if(room = rm_introleonidas){
	draw_self();
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_set_color(make_color_rgb(102, 45, 145));


	// Desenha o nome digitado
	draw_set_font(fnt_1);
	draw_text(x+20, y-15, "Rei Leonidas");



	//reset
	draw_set_color(-1);
	draw_set_font(-1); 
	draw_set_halign(-1);
	draw_set_valign(-1);
}else if(room = rm_introJoana){
	draw_self();
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_set_color(make_color_rgb(102, 45, 145));


	// Desenha o nome digitado
	draw_set_font(fnt_1);
	draw_text(x+20, y-15, "Joana D'arc");



	//reset
	draw_set_color(-1);
	draw_set_font(-1); 
	draw_set_halign(-1);
	draw_set_valign(-1);
}else if(room = rm_introTesla){
	draw_self();
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_set_color(make_color_rgb(102, 45, 145));


	// Desenha o nome digitado
	draw_set_font(fnt_1);
	draw_text(x+20, y-15, "Nikola Tesla");



	//reset
	draw_set_color(-1);
	draw_set_font(-1); 
	draw_set_halign(-1);
	draw_set_valign(-1);
}