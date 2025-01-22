// Variáveis iniciais do chefe
global.life_chefe = 16;
global.room_atual=room;
spd = 5;
hspd = 0;
vspd = 0;
grv = 1;
max_hspd = 0.5;
// Definir parâmetros para o ataque
attack_timer = 0; // Timer para controlar o disparo
shot_count = 0; // Contador de tiros disparados
max_shots = 4; // Número máximo de tiros
shot_duration = 150; // Tempo em frames para os tiros perseguirem o jogador
reload_timer = 0; // Timer para o tempo de recarga

// Inicialize a animação e estado
sprite_index = spr_joana; // Animação padrão do chefe
global.dash_Joana=0;
// Variáveis de controle
dash_active = false;
dash_speed = 10;
dash_direction = 0; // Direção do dash (1 para direita, -1 para esquerda)
platform = noone;   // Plataforma atual
dash_cooldown = 0;  // Tempo restante para o próximo dash
cooldown_max = 300; // 3 segundos (240 frames, dependendo de 60 FPS)
// Cooldown inicial de 120 frames (2 segundos)
initial_cooldown = 120; // 2 segundos (120 frames)
initial_cooldown_active = true; // Flag para indicar se o cooldown inicial está ativo

