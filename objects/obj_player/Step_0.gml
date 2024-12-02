#region Controles
var _left, _right, _jump, _squat, _attack, face;
_right = keyboard_check(ord("D")); // direita
_left = keyboard_check(ord("A")); // esquerda
_jump = keyboard_check(ord("W")); // pulo
_squat = keyboard_check(ord("S")); // agachar
_attack = keyboard_check(ord("J")); // ataque de fogo
#endregion

#region Movimentação
var move = (_left - _right) * max_hspd;

hspd = move * spd;
vspd += grv;
hspd = lerp(hspd, move, spd);

if (room == Room1) {
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
var flipped = direction;
var gun_x = x * flipped;
var _xx = x + lengthdir_x(-25, image_angle);
var y_offset = lengthdir_y(-25, image_angle);

if (_attack and global.bullet > 0) {
    with (instance_create_layer(_xx, y - 80, "Shoot", obj_shootPlayer)) {
        global.bullet--;
        // Velocidade do tiro
        speed = 15;
        // Direção do tiro
        direction = -90 + 90 * other.image_xscale;
        // Ângulo do tiro
        image_angle = direction;
    }
}
#endregion

#region Mudança de sprites
if (hspd != 0) image_xscale = sign(hspd - max_hspd);
#endregion

#region Configurações de hit
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
