instance_destroy(obj_aviso)

global.pos_x = random(room_width);  
show_debug_message(global.pos_x)
//show_message_async(pos_x)

instance_create_layer(global.pos_x, y, "Instances_1", obj_aviso);

alarm[0] = room_speed * 2; 
alarm[1]=room_speed*2
