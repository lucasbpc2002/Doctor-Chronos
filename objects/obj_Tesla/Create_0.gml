global.life_chefe = 16;
spd = 5;
hspd = 0;
vspd = 0;
grv = 1;
max_hspd= 0.5;


// Variáveis de controle
dash_active = false;
dash_speed = 15;
dash_direction = 0; // Direção do dash (1 para direita, -1 para esquerda)
platform = noone;   // Plataforma atual
dash_cooldown = 0;  // Tempo restante para o próximo dash
cooldown_max = 300; // 5 segundos (300 frames, dependendo de 60 FPS)
// Cooldown inicial de 120 frames (2 segundos)
initial_cooldown = 120; // 2 segundos (120 frames)
initial_cooldown_active = true; // Flag para indicar se o cooldown inicial está ativo

sprite_ataque_raio= spr_Tesla_attack_raio;
global.is_ataque=true;
is_aviso=false;
global.position_chef=x;
//show_message_async(x)
