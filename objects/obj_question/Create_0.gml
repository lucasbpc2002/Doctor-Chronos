

// URL da API
var _api_url = "http://localhost:8080/questions/"+string(2);
global._decod=""
// Inicializa a variável global para armazenar os dados da API
global.api_dados = "";
global.lista = ds_list_create();
// Enviar a requisição GET para a API
http_get(_api_url);
