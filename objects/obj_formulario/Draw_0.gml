draw_self();
draw_set_color(c_gray);  // Define a cor do texto como branco
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Desenha o título "Cadastro"
//draw_text(x-50, y-50, "Cadastro de Nome");

// Desenha o nome digitado
draw_text(x, y, "Digite um nome de usuário: "+global.username);

