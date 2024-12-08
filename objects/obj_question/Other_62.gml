var _resposta_json = async_load[? "result"]; 


global._decod = json_decode(_resposta_json);  
//var listar = global._decod[?"result"]
//show_message("Resposta completa: " + _resposta_json);


   global.api_dados= string(global._decod[?"question"]);
   
var items =global._decod[?"options"];  // "items" é uma ds_list
//var lista = ds_list_create();

for (var i = 0; i < ds_list_size(items); i++) {
	// show_message("Item: " + ds_list_find_value(items, i));
	 var valor=ds_list_find_value(items,i);
	 ds_list_add(global.lista,valor)
}

// show_message("global: " + ds_list_find_value(global.lista, 0));