// Variáveis iniciais do chefe
global.life_chefe = 16;
global.room_atual=room;
spd = 5;
hspd = 0;
vspd = 0;
grv = 1;
max_hspd = 0.5;
distance= 0;
// Definir parâmetros para o ataque
attack_timer = 0; // Timer para controlar o disparo
shot_count = 0; // Contador de tiros disparados
max_shots = 4; // Número máximo de tiros
shot_duration = 150; // Tempo em frames para os tiros perseguirem o jogador
reload_timer = 0; // Timer para o tempo de recarga

// Inicialize a animação e estado
sprite_index = spr_joana; // Animação padrão do chefe

jumping = false;
target_x = 0;
target_y = 0;
jump_speed = -12;

