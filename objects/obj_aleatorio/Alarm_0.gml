
 _random_x = random(room_width);
if(_random_x <global.position_chef-40){
global.instancia=instance_create_layer(_random_x, 0, "Instances_1", obj);

alarm[0] = room_speed *2; 
}else{

alarm[0] = room_speed *1; 
}	

//instance_destroy(obj);