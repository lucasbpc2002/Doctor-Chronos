// Definir uma posição aleatória dentro do limite da sala
var pos_x = random(room_width);   // Posição X aleatória

instance_create_layer(pos_x, y, "Instances_1", obj_aviso);

//instance_create_layer(pos_x, y, "Instances_1", obj_raio_Tesla);
alarm[0] = room_speed * 2;
