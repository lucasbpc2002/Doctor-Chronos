instance_destroy(obj_aviso)
 if(global.dash_Tesla==0){
//show_debug_message(global.pos_x)
//show_message_async(pos_x)
//global.pos_x = random(room_width); 
position_aviso=global.pos_x;
alarm[0] = 30;

instance_create_layer(global.pos_x, y, "Instances_1", obj_aviso);
//instance_create_layer(global.pos_x, y, "Instances_1", obj_raio_Tesla);

/*randomize();
global.pos_x2=random(room_width);
position_aviso2=global.pos_x2;
instance_create_layer(global.pos_x2, y, "Instances_1", obj_aviso);
*/
alarm[1]=room_speed*2;
alarm[0] = room_speed * 2;
 }
