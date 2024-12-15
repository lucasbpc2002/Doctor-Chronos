// Evento Draw
draw_self(); // Desenha o objeto normalmente

// Suponha que a API retorne uma lista de jogadores e pontuações
// Suponha que a API retorne uma lista de jogadores e pontuações
if (global.lista_perguntas != "" ) {

draw_set_font(fnt_questions);

draw_set_color(c_black); 
draw_text(x, y, ds_list_find_value(global.lista_perguntas,0));


} else {
    draw_text(x, y - 50, "Carregando dados...");
}
draw_set_font(-1);
