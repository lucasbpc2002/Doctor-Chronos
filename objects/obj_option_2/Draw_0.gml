draw_self();
var option= ds_list_find_value(global.lista, 1)
if(is_undefined(option)){

 scr_buttons_options("B) "+"...");
}else{
 scr_buttons_options("B) "+option);
}