global.life_chefe = 16;
spd = 5;
hspd = 0;
vspd = 0;
grv = 1;
max_hspd= 0.5;

global.life = 4;
global.previous_life = global.life;
global.bullet = 3; // Número inicial de balas
global.max_bullet = 3; // Número máximo de balas
reload_cooldown = 0; // Cooldown para recarregar as balas
reload_time = 300; // Tempo de recarga (3 segundos, 180 frames)
global.player = id;

//configurações de sprites
image_speed = 0.6;
is_attacking = false;
is_moving = false;
global.is_morto = false;
isHit = false;
is_jumping = false;
is_acertado = false;
sprite_idle = spr_player;
sprite_morto = spr_player_morto;
sprite_walk = spr_player_andando;
sprite_jump = spr_player_pulo;
sprite_attack = spr_player_attack;
sprite_acertado = spr_player_acertado;

