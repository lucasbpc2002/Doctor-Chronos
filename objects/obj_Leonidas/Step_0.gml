if(global.pause){
    image_speed = 0;
    exit;
} else {
    image_speed = 1;
}

#region colisão
// COLISÃO HORIZONTAL 1
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

// COLISÃO VERTICAL 1
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

// Cooldown para dano ao player
if (damage_cooldown > 0) {
    damage_cooldown--;
}

// Verificar colisão com o player e reduzir vida
if (place_meeting(x, y, obj_player) && damage_cooldown <= 0) {
    global.life -= 1; // Reduz 1 ponto de vida do player
    damage_cooldown = 30; // Define um cooldown de 30 frames
    show_debug_message("Dano ao player! Vida restante: " + string(global.life)); // Debug para verificar o dano
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
platform = instance_place(x, y + 1, obj_floor2);

// Verificar se o player está na mesma plataforma, se o jogador está vivo e se o cooldown inicial terminou
if (!initial_cooldown_active && global.is_morto == false && platform != noone && dash_cooldown <= 0 && !dash_active) {
    var player_platform = instance_place(obj_player.x, obj_player.y + 1, obj_floor2);
    
    if (player_platform == platform) {
        // Ativar o dash
        dash_active = true;
			
        // Definir direção do dash (baseado na posição do player)
        dash_direction = sign(obj_player.x - x);
        
        // Garantir que o dash é para uma direção válida
        if (dash_direction == 0) dash_direction = 1;

        // Trocar para animação de dash
        sprite_index = spr_Leonidas_attack_investida;
        image_index = 0;
		
        global.dash_Leonidas=1;
    }
}

// Executar o dash
if (dash_active) {
    // Movimentar o chefe
    x += dash_speed * dash_direction;
	
    // Parar ao atingir as bordas do cenário ou paredes
    if (x <= 0 || x >= room_width || place_meeting(x + dash_speed * dash_direction, y, obj_floor2)) {
        dash_active = false;
        dash_cooldown = cooldown_max; // Iniciar o cooldown
        sprite_index = spr_Leonidas_attack_aereo;  // Voltar para a sprite padrão
		
        global.dash_Leonidas=1;	
        alarm[0]=40;
    }

    // Parar ao colidir com o player
    if (place_meeting(x, y, obj_player)) {
        dash_cooldown = cooldown_max; // Iniciar o cooldown
		with(obj_player){
			global.life2 -= 1; // Reduz 1 ponto de vida do player
		}
        sprite_index = spr_Leonidas_attack_aereo; // Voltar para a sprite padrão
        dash_active = false;
        global.dash_Leonidas = 1;

        alarm[0] = 40;
    }
}
#endregion