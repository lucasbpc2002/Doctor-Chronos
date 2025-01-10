if(room = rm_comoMovimentar){
	draw_self();
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_set_color(make_color_rgb(102, 45, 145));


	// Desenha o nome digitado
	draw_set_font(fnt_1);
	draw_text(x+20, y-15, "movimentos do player");



	//reset
	draw_set_color(-1);
	draw_set_font(-1); 
	draw_set_halign(-1);
	draw_set_valign(-1);
}else if(room = rm_comoAtirar){
	draw_self();
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_set_color(make_color_rgb(102, 45, 145));


	// Desenha o nome digitado
	draw_set_font(fnt_1);
	draw_text(x+32, y-15, "como atacar?");



	//reset
	draw_set_color(-1);
	draw_set_font(-1); 
	draw_set_halign(-1);
	draw_set_valign(-1);
}else if(room = rm_comoQuiz){
	draw_self();
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_set_color(make_color_rgb(102, 45, 145));


	// Desenha o nome digitado
	draw_set_font(fnt_1);
	draw_text(x+220, y-15, "pra que serve o quiz no jogo?");


	//reset
	draw_set_color(-1);
	draw_set_font(-1); 
	draw_set_halign(-1);
	draw_set_valign(-1);
}else if(room = rm_comoJogar){
	draw_self();
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_set_color(make_color_rgb(102, 45, 145));


	// Desenha o nome digitado
	draw_set_font(fnt_1);
	draw_text(x+100, y-15, "como jogar?");

	//reset
	draw_set_color(-1);
	draw_set_font(-1); 
	draw_set_halign(-1);
	draw_set_valign(-1);
}