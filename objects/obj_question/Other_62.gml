
var _resposta_json = async_load[? "result"]; 

//show_message("Resposta completa: " + _resposta_json);

global._decod = json_decode(_resposta_json); 

 global.age=string(global._decod[?"age"])


//show_message("resposta: " +ds_list_find_value(global._decod[?"question"], 3));
   global.api_dados= string(global._decod[?"question"]);

  global.resposta= global._decod[?"answer"]
  var items =global._decod[?"options"];

  for (var i = 0; i < ds_list_size(items); i++) {
	// show_message("Item: " + ds_list_find_value(items, i));
	 var valor=ds_list_find_value(items,i);
	 ds_list_add(global.lista,valor)
    global.lista_perguntas=string(global.lista)
   }




