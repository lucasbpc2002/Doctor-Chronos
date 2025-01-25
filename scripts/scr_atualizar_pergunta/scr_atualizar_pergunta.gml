// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scr_atualizar_pergunta(_room_da_vez){
global.lista_perguntas= ds_list_create();
if(_room_da_vez==rm_room1){
global.resposta= ds_list_create();
    var _api_url = "https://quizhistoriaapi2-2.onrender.com/questions/"+string(5)+"/";
    http_get(_api_url);
}else if(_room_da_vez==rm_room2){
global.resposta= ds_list_create();
    var _api_url = "https://quizhistoriaapi2-2.onrender.com/questions/"+string(3)+"/";
    http_get(_api_url);
}else if(_room_da_vez==rm_room3){
global.resposta= ds_list_create();
    var _api_url = "https://quizhistoriaapi2-2.onrender.com/questions/"+string(2)+"/";
    http_get(_api_url);
}
global.room_atual=_room_da_vez;
}