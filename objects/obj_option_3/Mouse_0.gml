
var option= ds_list_find_value(global.lista, 2)
if(is_undefined(option)){
//BLOQUEADO
}else{
scr_verificar_resposta(option)
}

if (global.resposta_certa == option) {
        // Resposta correta: botão verde
        global.flag_C=4;
		
 }else if(global.resposta_certa !=option){
	 global.flag_C=6;
 }

if(global.clickC!=2){
global.clickB=2;
global.click=2;
global.clickC=1;
global.clickD=2;
}
