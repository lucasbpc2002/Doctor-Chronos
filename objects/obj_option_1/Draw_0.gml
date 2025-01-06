draw_self()
var option= ds_list_find_value(global.lista, 0)
if(is_undefined(option)){

 scr_buttons_options("A) "+"...");
}else{
 scr_buttons_options("A) "+option);
}