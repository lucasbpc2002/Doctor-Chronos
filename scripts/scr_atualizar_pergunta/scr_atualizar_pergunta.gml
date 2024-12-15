// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scr_atualizar_pergunta(n){
  
global._decod=""
global.api_dados = "";
global.lista = ds_list_create();
global.api_dados = "";

global.lista_perguntas= "";
    var _api_url = "http://localhost:8080/questions/"+string(n);
    http_get(_api_url);


}