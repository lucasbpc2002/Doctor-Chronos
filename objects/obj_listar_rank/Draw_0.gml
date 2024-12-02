draw_self();
var y_offset = 100;
//draw_text(x, y, " "+global.username);
var size = array_length_1d(texto_lista);
 
for (var i = 0; i < size; i++) {
	  y_offset += 30; 
	
    var item = texto_lista[i];  // Acessa cada item da lista
    draw_text(x-200, y_offset+100, item[0] );
	draw_text(x+150, y_offset+100, string(item[1]))
}
 //show_message(size)