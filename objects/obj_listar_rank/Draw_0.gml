draw_self();
var _y_offset = 100;
//draw_text(x, y, " "+global.username);

var _size = array_length_1d(texto_lista);
 
for (var _i = 0; _i < _size; _i++) {
	  _y_offset += 30
	
    var _item = texto_lista[_i];  // Acessa cada item da lista
    draw_text(x-200, _y_offset+100, _item[0] );
	draw_text(x+150, _y_offset+100, string(_item[1]))
}

