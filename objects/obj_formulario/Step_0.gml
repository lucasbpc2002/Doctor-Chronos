//Apagar
if (keyboard_check_pressed(vk_backspace)) {
	var nome= global.username
    if (string_length(nome) > 0) {
        // Apagar o último caractere do nome de usuário
        global.username = string_delete(nome, string_length(nome), 1);
    }
}


if (keyboard_string != "") {
    if (string_length(global.username) < max_length) {
        global.username += keyboard_string;
        keyboard_string = "";  // Limpa a string de teclas digitadas
    }
}

// Acionar o cadastro
if (keyboard_check_pressed(vk_enter)) {
    scr_cadastro_user();
	
}

