// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_verificar_resposta(_alternativa){
var _resposta= ds_list_find_value(global.resposta,0)

draw_self()

 if(_resposta == _alternativa){
global.resposta_certa=_resposta;

show_message("Parabéns");

global.score_certas=global.score_certas+100;
global.score_certas2=global.score_certas;

	show_debug_message(global.score_certas);
if(global.life2==0){
global.life=2;	
}else{

	global.life=global.life2;	

}

if(global.life_chefe2 == 12){
global.life_chefe=10;
}
if(global.life_chefe2 == 8){
	global.life_chefe=6;
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

global.score_erradas=global.score_erradas+75;
global.score_erradas2=global.score_erradas;

	 if(global.life2==0){ 

		
		 room_goto(rm_GameOver);
		 
	// global.go_Menu=1;

     }else{
		 global.life=global.life2;	
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
 if(global.life_chefe2 == 0){
 global.life_chefe=4;
 } 
	 

    //show_message("Errou, a resposta correta é: "+_resposta)
 }
 

alarm[0]=60;
}
