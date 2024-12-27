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

#region Mudança de sprites

// Função para trocar a animação
function change_animation() {
    if (is_attacking) {
        sprite_index = sprite_attack;
    } else if (is_jumping) {
        sprite_index = sprite_jump;
    } else if (is_moving) {
        sprite_index = sprite_walk; 
    } else {
        sprite_index = sprite_idle;
    }
}

// Atualização do estado do jogador
if (_left || _right) {
    is_moving = true;
} else {
    is_moving = false;
}

if (_jump and !is_jumping) {
    is_jumping = true;
} else if (vspd == 0) {
    is_jumping = false;
}

// Atualização da animação
if (!is_attacking) {
    change_animation();
}
#endregion

#region Configurações de hit
// Variável para controlar o estado da animação

// Verifica se a vida diminuiu e se o personagem não está em estado de hit
if (global.life < global.previous_life and !isHit) {
    sprite_index = spr_player_acertado;
    image_index = 0;
    isHit = true;
    alarm[0] = sprite_get_number(spr_player_acertado) * 10;
}

if (alarm[0] == -1) {
    isHit = false;
}

if (sprite_index == spr_player_acertado and image_index >= image_number - 1) {
    sprite_index = spr_player;
    image_index = 0;
}

global.previous_life = global.life;

if (global.life < 1) {
    if (sprite_index != spr_player_morto) {
        sprite_index = spr_player_morto;
        image_speed = 1;
        spd = 0;
    }

    if (image_index >= image_number - 1) {
        image_speed = 0;
        image_index = image_number - 1;
    }
}
#endregion
