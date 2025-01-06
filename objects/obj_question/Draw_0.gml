
draw_self();
var largura_caixa = 30; // Largura onde o texto será quebrado
var altura_caixa =630;  // Altura da caixa (opcional, você pode deixar 0 para não limitar)
var texto= ds_list_find_value(global.lista_perguntas,0)
draw_set_font(fnt_questions);
draw_set_color(c_black); 

if (global.lista_perguntas != "") {
  if(is_undefined(texto)){
    draw_text_ext(x-90,y, "carregando os dados..", largura_caixa, altura_caixa);
   }else {
 
   draw_text_ext(x-90,y, texto, largura_caixa, altura_caixa);
  }
}


