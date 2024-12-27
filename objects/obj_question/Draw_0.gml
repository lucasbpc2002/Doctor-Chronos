
draw_self();
var largura_caixa = 30; // Largura onde o texto será quebrado
var altura_caixa =630;  // Altura da caixa (opcional, você pode deixar 0 para não limitar)


if (global.lista_perguntas != "" ) {

draw_set_font(fnt_questions);

draw_set_color(c_black); 
var texto= ds_list_find_value(global.lista_perguntas,0)
 draw_text_ext(x-90,y, texto, largura_caixa, altura_caixa);


} else {
    draw_text(x, y - 50, "Carregando dados...");
}
draw_set_font(-1);
