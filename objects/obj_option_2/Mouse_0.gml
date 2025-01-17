
var option= ds_list_find_value(global.lista, 1)
if(is_undefined(option)){
//BLOQUEADO
}else{
scr_verificar_resposta(option)
}

 if (global.resposta_certa == option) {
        // Resposta correta: botão verde
        global.flag_B=4;
		
 }else if(global.resposta_certa !=option){
	 global.flag_B=6;
 }
if(global.clickB!=2){
global.clickB=1;
global.click=2;
global.clickC=2;
global.clickD=2;
}