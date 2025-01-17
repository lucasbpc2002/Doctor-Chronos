#region Controles
var _left, _right, _jump, _attack;
_right = keyboard_check(ord("D")); // direita
_left = keyboard_check(ord("A")); // esquerda
_jump = keyboard_check(ord("W")); // pulo
_attack = keyboard_check(ord("J")); // ataque de fogo
#endregion

#region Movimentação
var _move = (_left - _right) * max_hspd;
if (hspd != 0) image_xscale = sign(hspd - max_hspd);
hspd = _move * spd;
vspd += grv;
hspd = lerp(hspd, _move, spd);

if (room == rm_room1) {
    // COLISÃO HORIZONTAL 1
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

        // Verifica se o personagem está no chão e redefine a animação
        if (sprite_index == sprite_jump) {
            sprite_index = sprite_idle; // Volta para a animação base
            is_jumping = false; // Marca que não está mais pulando
        }
    }
    y += vspd;

    // PULO 1
    if (place_meeting(x, y + 1, obj_floor1) and _jump and sprite_index != spr_player_morto) {
        vspd -= 25;
        sprite_index = sprite_jump; // Troca para a animação de pulo
        is_jumping = true; // Marca como pulando
    }
} else {
    // COLISÃO HORIZONTAL 2
    if (place_meeting(x + hspd, y, obj_floor2)) {
        var _hspd = sign(hspd);
        hspd = 0;
        while (!place_meeting(x + _hspd, y, obj_floor2)) {
            x += _hspd;
        }
        hspd = 0;
    }
    x += hspd;

    // COLISÃO VERTICAL 2
    if (place_meeting(x, y + vspd, obj_floor2)) {
        var _vspd = sign(vspd);
        while (!place_meeting(x, y + _vspd, obj_floor2)) {
            y += _vspd;
        }
        vspd = 0;

        // Verifica se o personagem está no chão e redefine a animação
        if (sprite_index == sprite_jump) {
            sprite_index = sprite_idle; // Volta para a animação base
            is_jumping = false; // Marca que não está mais pulando
        }
    }
    y += vspd;

    // PULO 2
    if (place_meeting(x, y + 1, obj_floor2) and _jump and sprite_index != spr_player_morto) {
        vspd -= 25;
        sprite_index = sprite_jump; // Troca para a animação de pulo
        is_jumping = true; // Marca como pulando
    }
}
#endregion

#region Ataque
var flipped = sign(image_xscale); // Direção do personagem (-1 para esquerda, 1 para direita)
var gun_offset_x = -25 * flipped; // Ajuste horizontal baseado na direção
var gun_offset_y = -80; // Ajuste fixo de altura

// Coordenadas para o tiro
var gun_x = x + gun_offset_x;
var gun_y = y + gun_offset_y;

if (sprite_index != spr_player_morto and _attack and global.bullet > 0 and !is_attacking) {
    is_attacking = true; // Marca que o ataque começou
    sprite_index = sprite_attack; // Troca para a animação de ataque
    image_index = 0; // Reinicia a animação
    image_speed = 1; // Garante que a animação seja executada na velocidade correta

    // Criação do tiro
    with (instance_create_layer(gun_x, gun_y, "Shoot", obj_shoot_player)) {
        global.bullet--;
        speed = 15;
        direction = flipped == -1 ? 180 : 0;
        image_xscale = flipped;
    }
}

// Liberar o ataque quando a animação terminar ou sem balas
if (is_attacking) {
    if (image_index >= image_number - 1 || global.bullet <= 0) {
        is_attacking = false;
        sprite_index = sprite_idle; // Volta para a animação base
        image_index = 0; // Reseta a animação para garantir fluidez
    }
}
#endregion

#region Recarga de Balas
// Verifica se as balas acabaram e se o cooldown de recarga terminou
if (global.bullet <= 0 && reload_cooldown <= 0) {
    reload_cooldown = reload_time; // Inicia o cooldown de recarga
} else if (reload_cooldown > 0) {
    reload_cooldown--; // Decrementa o cooldown de recarga
}

// Recarregar as balas quando o cooldown terminar
if (reload_cooldown <= 0 && global.bullet <= 0) {
    global.bullet = global.max_bullet; // Recarrega as balas
}
#endregion

#region Mudança de sprites

// Função para trocar a animação
function change_animation() {
    if (is_attacking) {
        sprite_index = sprite_attack;
    } else if (is_jumping) {
        sprite_index = sprite_jump;
    } else if (is_moving) {
        sprite_index = sprite_walk; 
    } else if (is_acertado) {
     	sprite_index = sprite_acertado;
	} else if(global.is_morto){
		sprite_index= sprite_morto;
	}
	else {
        sprite_index = sprite_idle;
    }
}
#endregion

#region Atualização do estado do jogador
if (_left || _right and sprite_index != spr_player_morto ) {
    is_moving = true;
} else {
    is_moving = false;
}

if (_jump and !is_jumping and sprite_index != spr_player_morto) {
    is_jumping = true;
} else if (vspd == 0) {
    is_jumping = false;
}
if (global.life < global.previous_life and !is_acertado and sprite_index != spr_player_morto) {
    sprite_index = spr_player_acertado;
    image_index = 0;
    isHit = true;
    alarm[0] = sprite_get_number(spr_player_acertado) * 10;
	is_acertado = true;
}
if (alarm[0] == -1) {
    isHit = false;
	is_acertado = false
}

if (sprite_index == spr_player_acertado and image_index >= image_number - 1) {
    sprite_index = spr_player;
    image_index = 0;
	is_acertado = false
}

global.previous_life = global.life;
if (global.life < 1) {
	scr_atualizar_pergunta(room)
	room_goto(rm_room_quiz)
    if (sprite_index != spr_player_morto) {
        sprite_index = spr_player_morto;
		global.is_morto= true;
        image_speed = 1;
        spd = 0;
    }

    if (image_index >= image_number - 1) {
        image_speed = 0;
		global.is_morto= true;
		is_jumping= false;
   	    is_moving = false;
		is_attacking = false;
        image_index = image_number - 1;
    }
}

change_animation()
#endregion
