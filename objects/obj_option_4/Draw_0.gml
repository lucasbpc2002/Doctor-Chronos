draw_self();
var option= ds_list_find_value(global.lista, 3)
if(is_undefined(option)){

 scr_buttons_options("D) "+"...",make_color_rgb(133, 96, 169));
}else{
  if((global.click==0 || global.click==2 || global.clickB==0 || global.clickB==2 || global.clickC==0 || global.clickC==2) && global.clickD==1){
	
	if (global.flag_D == 4) {
        scr_buttons_options("D) " + option, make_color_rgb(0, 255, 0));
    } else if (global.flag_D == 6) {	
       scr_buttons_options("D) " + option, make_color_rgb(255, 0, 0));			        
    } else {   
            scr_buttons_options("D) " + option, make_color_rgb(133, 96, 169));
    } 
  }else if(global.clickD==0 || global.clickD==2){
            scr_buttons_options("D) " + option, make_color_rgb(133, 96, 169));
  }
  
}