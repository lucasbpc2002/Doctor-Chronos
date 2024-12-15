// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_verificar_resposta(_alternativa){
var _resposta= global.resposta
draw_self()
 if(_resposta == _alternativa){

image_blend=make_color_rgb(0, 255, 0);



show_message("acertou")
//scr_atualizar_pergunta(global.contador++)
 }else{
  show_message("errou")
  image_blend=make_color_rgb(255, 0, 0);
 }

 //room_goto(rm_room_menu)
}