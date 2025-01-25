function scr_cadastro_user(){
    if (global.username !="") {
	
    var _file = file_text_open_append("cadastro.txt");
	     
	    file_text_write_string(_file, "Nome: " + global.username + "\n");
        file_text_write_string(_file, "Pontuação: " + string(global.score) + "\n");
   
        // Fechar o arquivo
        file_text_close(_file);


        show_message("Cadastro realizado com sucesso, "+global.username);
		room_goto(rm_room_menu);
    } else {
        show_message("Por favor, preencha o nome de usuário!");
    }
}