function scr_cadastro_user(){
  if(global.fases==1){
    if (global.username !="") {
	
    var _file = file_text_open_append("cadastroFase1.txt");
	     
	    file_text_write_string(_file, "Nome: " + global.username + "\n");
        file_text_write_string(_file, "Pontuação: " + string(global.score) + "\n");
   
        // Fechar o arquivo
        file_text_close(_file);


        show_message("Cadastro realizado com sucesso, "+global.username);
		room_goto(rm_room_rank);
    } else {
        show_message("Por favor, preencha o nome de usuário!");
    }
  }else if(global.fases==2){
	    if (global.username !="") {
	
    var _file = file_text_open_append("cadastroFase2.txt");
	     
	    file_text_write_string(_file, "Nome: " + global.username + "\n");
        file_text_write_string(_file, "Pontuação: " + string(global.score) + "\n");
   
        // Fechar o arquivo
        file_text_close(_file);


        show_message("Cadastro realizado com sucesso, "+global.username);
		room_goto(rm_room_rank);
    } else {
        show_message("Por favor, preencha o nome de usuário!");
    }
  }else if(global.fases==3){
    if (global.username !="") {
	
    var _file = file_text_open_append("cadastroFase3.txt");
	     
	    file_text_write_string(_file, "Nome: " + global.username + "\n");
        file_text_write_string(_file, "Pontuação: " + string(global.score) + "\n");
   
        // Fechar o arquivo
        file_text_close(_file);


        show_message("Cadastro realizado com sucesso, "+global.username);
		room_goto(rm_room_rank);
    } else {
        show_message("Por favor, preencha o nome de usuário!");
    }
	}
}