#region Controles
var _left, _right, _jump, _squat, _attack;
_right = keyboard_check(ord("D")); // direita
_left = keyboard_check(ord("A")); // esquerda
_jump = keyboard_check(ord("W")); // pulo
_squat = keyboard_check(ord("S")); // agachar
_attack = keyboard_check(ord("J")); // ataque de fogo
#endregion

#region Movimentação
var _move = (_left - _right) * max_hspd;

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
    }
    y += vspd;

    // PULO 1
    if (place_meeting(x, y + 1, obj_floor1) and _jump and sprite_index != spr_player_morto) {
        vspd -= 25;
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
    }
    y += vspd;

    // PULO 2
    if (place_meeting(x, y + 1, obj_floor2) and _jump and sprite_index != spr_player_morto) {
        vspd -= 25;
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

if (sprite_index != spr_player_morto and _attack and global.bullet > 0 and !global.isShooting) {
    global.isShooting = true; // Impede que outro tiro seja disparado até que o primeiro acerte ou o botão seja solto
    with (instance_create_layer(gun_x, gun_y, "Shoot", obj_shoot_player)) {
        global.bullet--;
        // Velocidade do tiro
        speed = 15;
        // Direção do tiro
        direction = 0; // Para direita ou esquerda baseado em 'flipped'
        if(flipped == -1){
            direction = 180;
        }
        image_xscale = flipped; // Garante que o tiro também acompanha a direção
    }
}

// Liberar o controle de disparo quando o botão for solto
if (!_attack) {
    global.isShooting = false;
}
#endregion

#region Mudança de sprites
if (hspd != 0) image_xscale = sign(hspd - max_hspd);
/*
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

// Atualização do estado do jogador (exemplo)
if (keyboard_check(ord("A")) || keyboard_check(ord("D"))) {
    is_moving = true;
} else {
    is_moving = false;
}

if (keyboard_check_pressed(ord("W"))) {
    is_jumping = true;
}

if (keyboard_check_pressed(ord("J"))) { // Botão de ataque (ajuste conforme necessário)
    is_attacking = true;
    // Iniciar um alarme para controlar a duração da animação de ataque
    alarm[0] = sprite_get_number(sprite_attack) * 10;
}

// Atualização da animação
change_animation();

// Verificação do fim da animação de ataque
if (alarm[0] == -1 && is_attacking) {
    is_attacking = false;
}
*/
#endregion

#region Configurações de hit
// Variável para controlar o estado da animação
var isHit = false;

// Verifica se a vida diminuiu e se o personagem não está em estado de hit
if (global.life < global.previous_life && !isHit) {
    // Troca a animação para a animação de acerto
    sprite_index = spr_player_acertado;
    image_index = 0;
    isHit = true;
    alarm[0] = sprite_get_number(spr_player_acertado) * 10;
}

// Verifica se a animação de acerto terminou
if (alarm[0] == -1 && isHit) {
    sprite_index = spr_player;
    isHit = false;
}

// Armazena o valor anterior de vida
global.previous_life = global.life;

// morte troca de animação
if (global.life < 1) {
    if (sprite_index != spr_player_morto) {
        sprite_index = spr_player_morto; // Muda para o sprite de "morto"
        image_speed = 1; // Garante que a animação de morte comece
        spd = 0; // Para o movimento
    }

    // Verifica se o sprite está no último frame
    if (image_index >= image_number - 1) {
        image_speed = 0; // Para a animação
        image_index = image_number - 1; // Garante que fica no último frame
    }
}
#endregion
