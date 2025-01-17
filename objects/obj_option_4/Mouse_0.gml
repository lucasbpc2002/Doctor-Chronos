
var option= ds_list_find_value(global.lista, 3)
if(is_undefined(option)){
//BLOQUEADO
}else{
scr_verificar_resposta(option)
}

if (global.resposta_certa == option) {
        // Resposta correta: botão verde
        global.flag_D=4;
		
 }else if(global.resposta_certa !=option){
	 global.flag_D=6
 }

if(global.clickD !=2){
global.clickD=1;
global.clickB=2;
global.click=2;
global.clickC=2;
}