// Definir uma posição aleatória dentro do limite da sala
var pos_x = random(room_width);   // Posição X aleatória

instance_create_layer(pos_x, y, "Instances_leonidas", obj_aviso);
alarm[0] = room_speed * 2;
