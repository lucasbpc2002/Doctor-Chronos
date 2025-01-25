
var option= ds_list_find_value(global.lista, 0)
if(is_undefined(option)){
//BLOQUEADO
}else{
scr_verificar_resposta(option)

}
 if (global.resposta_certa == option) {
        // Resposta correta: botão verde
        global.flag=4;

		
		
 }else if(global.resposta_certa !=option){
	 global.flag=6
 }
 
if(global.click!=2){
global.click=1;
global.clickB=2;
global.clickC=2;
global.clickD=2;
}

