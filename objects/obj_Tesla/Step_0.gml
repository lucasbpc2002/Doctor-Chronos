#region Colisão
  // COLISÃO HORIZONTAL 1
	var _move = (hspd) * max_hspd;

		hspd = _move * spd;
		vspd += grv;
		hspd = lerp(hspd, _move, spd);
    if (place_meeting(x + hspd, y, obj_floor1)) {
        var _hspd = sign(hspd);
        hspd = 0;
        while (!place_meeting(x + _hspd, y, obj_floor1)) {
            x += _hspd;
        }
        hspd = 0;
    }
    x += hspd;

    // COLISÃO VERTICAL 1
    if (place_meeting(x, y + vspd, obj_floor1)) {
        var _vspd = sign(vspd);
        while (!place_meeting(x, y + _vspd, obj_floor1)) {
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

#region Cooldown Inicial
// Decrementa o cooldown inicial
if (initial_cooldown_active) {
    if (initial_cooldown > 0) {
        initial_cooldown--;
    } else {
        initial_cooldown_active = false; // Desativa o cooldown inicial
    }
}
#endregion

#region Ataque Dash
// Reduzir o cooldown se necessário
if (dash_cooldown > 0) {
    dash_cooldown--;
}

// Checar a plataforma atual do chefe
platform = instance_place(x, y + 1, obj_floor1);

// Verificar se o player está na mesma plataforma, se o jogador está vivo e se o cooldown inicial terminou
if (!initial_cooldown_active && global.is_morto == false && platform != noone && dash_cooldown <= 0 && !dash_active) {
    var player_platform = instance_place(obj_player.x, obj_player.y + 1, obj_floor1);
    
    if (player_platform == platform) {
        // Ativar o dash
        dash_active = true;

        // Definir direção do dash (baseado na posição do player)
        dash_direction = sign(obj_player.x - x);
        
        // Garantir que o dash é para uma direção válida
        if (dash_direction == 0) dash_direction = 1;

        // Trocar para animação de dash
        sprite_index = spr_Tesla_attack_propulsor;
        image_index = 0;
    }
}

// Executar o dash
if (dash_active) {
    // Movimentar o chefe
    x += dash_speed * dash_direction;

    // Parar ao atingir as bordas do cenário ou paredes
    if (x <= 0 || x >= room_width || place_meeting(x + dash_speed * dash_direction, y, obj_floor1)) {
        dash_active = false;
        dash_cooldown = cooldown_max; // Iniciar o cooldown
        sprite_index = spr_Tesla;  // Voltar para a sprite padrão
    }

    // Parar ao colidir com o player
    if (place_meeting(x, y, obj_player)) {
        dash_active = false;
        dash_cooldown = cooldown_max; // Iniciar o cooldown
        sprite_index = spr_Tesla;  // Voltar para a sprite padrão
    }
}

#endregion
