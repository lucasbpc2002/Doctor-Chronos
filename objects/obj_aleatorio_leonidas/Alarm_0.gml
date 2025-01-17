instance_destroy(obj_aviso)
 if(global.dash_Leonidas==0){
position_aviso=global.pos_x2;
alarm[0] = room_speed * 2;

instance_create_layer(global.pos_x2, y, "Instances_leonidas", obj_aviso);

alarm[1]=room_speed*2;
alarm[0] = room_speed * 2;
 }
