// Evento Draw
draw_self(); // Desenha o objeto normalmente

// Suponha que a API retorne uma lista de jogadores e pontuações
// Suponha que a API retorne uma lista de jogadores e pontuações
if (global.api_dados != "") {

draw_set_font(fnt_questions);

draw_set_color(c_black); 
draw_text(x, y, global.api_dados);

} else {
    draw_text(x, y - 50, "Carregando dados...");
}
draw_set_font(-1);
