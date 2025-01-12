draw_self();
var option= ds_list_find_value(global.lista, 2)
if(is_undefined(option)){

 scr_buttons_options("C) "+"...");
}else{
 scr_buttons_options("C) "+option);
}