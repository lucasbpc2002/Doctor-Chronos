if(global.pause){
	image_speed = 0;
	speed = 0
	exit;
	}
	else{
		image_speed = 1
		speed = 6
	}


if (obj_player.x > x) {
    image_xscale = -1; // Virado para a direita
} else {
    image_xscale = 1; // Virado para a esquerda
}

// Se o tempo de perseguição estiver ativo, ajusta a direção para o jogador
if (is_tracking) {
    if (timer > 0) {
        var angle = point_direction(x, y, player_x, player_y); // Calcula o ângulo em direção ao jogador
        direction = angle; // Atualiza a direção
        timer -= 1; // Decrementa o contador do tempo de perseguição
    } else {
        // Quando o tempo de perseguição termina, desativa o rastreamento
        is_tracking = false;
    }
}


// Reduz a duração de vida do tiro
lifetime -= 1;

// Destroi o tiro quando o tempo de vida acabar
if (lifetime <= 0) {
    instance_destroy();
}

// Checa se o tiro saiu da tela e o destrói
if (x < 0 || x > room_width || y < 0 || y > room_height) {
    instance_destroy();
}
