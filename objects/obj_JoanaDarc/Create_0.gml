
global.life_chefe2 = global.life_chefe;
global.room_atual=room;
spd = 5;
hspd = 0;
vspd = 0;
grv = 1;
max_hspd = 0.5;
// Definir parâmetros para o ataque
attack_timer = 0; // Timer para controlar o disparo
shot_count = 0; // Contador de tiros disparados
max_shots = 100000000; // Número máximo de tiros
shot_duration = 120; // Tempo em frames para os tiros perseguirem o jogador
reload_timer = 0; // Timer para o tempo de recarga

// Inicialize a animação e estado
sprite_index = spr_joana; // Animação padrão do chefe


