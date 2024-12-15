
    // Obter a resposta JSON
    var resposta_json = async_load[? "result"];
    
    // Converter o JSON em uma lista de dados
    var lista_perguntas = json_parse(resposta_json);

    // Agora você pode acessar cada pergunta na lista
    for (var i = 0; i < array_length_1d(lista_perguntas); i++) {
        
	    ds_list_add(global.api_dados, lista_perguntas[i])
	}   
        var pergunta = lista_perguntas[global.contador];
        var texto_pergunta = pergunta[1];     // O texto da pergunta
        var resposta_correta = pergunta[2];   // A resposta correta
        var alternativas = pergunta[3];       // Lista de alternativas

        // Exibir os dados no console de debug (opcional)
       // global.lista=string(texto_pergunta)
		ds_list_add(global.lista_perguntas,texto_pergunta)
		ds_list_add(global.resposta,resposta_correta)
        show_debug_message("pergunta "+ texto_pergunta);
		
			
        // Mostrar as alternativas
        for (var j = 0; j < array_length_1d(alternativas); j++) {
          // show_debug_message("Alternativa " + string(j+1) + ": " + alternativas[j]);
			ds_list_add(global.lista,alternativas[j])
        }
    



