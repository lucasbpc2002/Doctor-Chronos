draw_self();
var option= ds_list_find_value(global.lista, 3)
if(is_undefined(option)){

 scr_buttons_options("D) "+"...");
}else{
 scr_buttons_options("D) "+option);
}