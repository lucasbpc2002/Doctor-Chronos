if(global.pause){
	image_speed = 0;
	exit;
	}
	else{
		image_speed = 1
	}

#region Colisão
// COLISÃO HORIZONTAL
var _move = (hspd) * max_hspd;

hspd = _move * spd;
vspd += grv;
hspd = lerp(hspd, _move, spd);
if (place_meeting(x + hspd, y, obj_floor2)) {
    var _hspd = sign(hspd);
    hspd = 0;
    while (!place_meeting(x + _hspd, y, obj_floor2)) {
        x += _hspd;
    }
    hspd = 0;
}
x += hspd;

// COLISÃO VERTICAL
if (place_meeting(x, y + vspd, obj_floor2)) {
    var _vspd = sign(vspd);
    while (!place_meeting(x, y + _vspd, obj_floor2)) {
        y += _vspd;
    }
    vspd = 0;
}
y += vspd;
#endregion

// Manter o chefe virado na direção do player
if (obj_player.x > x) {
    image_xscale = -1; // Virado para a direita
} else {
    image_xscale = 1; // Virado para a esquerda
}


#region ataque de luz

// Incrementa o timer de recarga, se necessário
if (reload_timer > 0) {
    reload_timer -= 1; // Decrementa o tempo de recarga
    return; // Sai do Step enquanto recarrega
}

attack_timer += 1; // Aumenta o timer a cada frame

// Quando o timer atingir o valor e o número de tiros for menor que o máximo
if (attack_timer == 60 && shot_count < max_shots) {
    // Dispara os tiros
    var angle = point_direction(x, y, obj_player.x, obj_player.y); // Ângulo do tiro em direção ao jogador
    var shot = instance_create_layer(x, y, "Shoot", obj_shoot_joanaDarc); // Cria o tiro

    shot.direction = angle; // Direção do tiro
    shot.speed = 6; // Velocidade do tiro
    shot.player_x = obj_player.x; // Posição inicial do jogador
    shot.player_y = obj_player.y; // Posição inicial do jogador
    shot.timer = shot_duration; // Tempo de duração do tiro perseguir o jogador
    
    shot_count += 1; // Incrementa o contador de tiros

    // Troca para a animação de disparo
    sprite_index = spr_joana;
}

// Volta para a animação padrão após disparar
if (sprite_index == spr_joana && attack_timer > 60) {
    sprite_index = spr_Joana_tiro; // Retorna à animação padrão
    attack_timer = 0; // Reinicia o timer
}

// Inicia o tempo de recarga quando o chefe dispara todos os tiros
if (shot_count >= max_shots) {
    reload_timer = room_speed * 10; // Tempo de recarga (10 segundos)
    shot_count = 0; // Reseta o contador de tiros
    attack_timer = 0; // Reseta o timer de ataque
}
#endregion 