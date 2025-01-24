// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_verificar_resposta(_alternativa){
var _resposta= ds_list_find_value(global.resposta,0)

draw_self()

 if(_resposta == _alternativa){
global.resposta_certa=_resposta;

show_message("Parabéns");
if(global.life2==0){
global.life=2;	
global.score_certas = global.score_certas + 100;
}else{
	global.life=global.life2;
}

if(global.life_chefe2 == 12){
global.life_chefe=10;
}
if(global.life_chefe2 == 8){
	global.life_chefe=6
}
if(global.life_chefe2 == 4){
global.life_chefe=2;
}
if(global.life_chefe2 == 0){
	room_goto(rm_gameWin)
}
//global.life_chefe=2;
//scr_atualizar_pergunta(global.contador++)
 }else{
	 
     show_message("Errou");
	 if(global.life2==0){ 
		 room_goto(rm_GameOver)
     }else{
	 }

 	 
 if(global.life_chefe2 == 12){
 global.life_chefe=16;
 }
 if(global.life_chefe2 == 8){
	global.life_chefe=12;
 }
 if(global.life_chefe2 == 4){
 global.life_chefe=8;
 } 
	 
	 
	
    //show_message("Errou, a resposta correta é: "+_resposta)
 }
alarm[0]=60;

}
