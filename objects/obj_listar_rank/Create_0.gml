var _y_offset = 100;
texto_lista = [];
var _arquivo, _linha, _nome, _pontuacao;
if(global.fases==1){
arquivo = file_text_open_read("cadastroFase1.txt");
//caminho onde estar salvando o arquivo: C:\Users\Ihosana\AppData\Local\projeto
// Verifica se o arquivo foi aberto corretamente
if (arquivo == -1) {
     draw_text(x-110, _y_offset+140, "Nenhum registro encontrado!");
    return;
}
// Verificar se o arquivo está vazio
if (file_text_eof(arquivo)) {
    draw_text(x, _y_offset, "Arquivo vazio!");
    file_text_close(arquivo);
    return;  
}

while (!file_text_eof(arquivo)) {
    _linha = file_text_readln(arquivo); 
  
    if (string_pos("Nome:", _linha) > 0) {
        _nome= string_delete(_linha, 1, 5);  
    }

    if (string_pos("Pontuação:", _linha) > 0) {
        _pontuacao = real(string_delete(_linha, 1, 10));
        texto_lista[array_length_1d(texto_lista)] = [_nome, _pontuacao];  
    }
}

file_text_close(arquivo);

function compare_pontuacao(_a, _b) {
    if (_a[1] < _b[1]) {
        return 1;
    } else if (_a[1] > _b[1]) {
        return -1;
    } else {
        return 0;
    }
}

// Ordena o array texto_lista de acordo com a pontuação
array_sort(texto_lista, compare_pontuacao);
}else if(global.fases==2){
arquivo = file_text_open_read("cadastroFase2.txt");
//caminho onde estar salvando o arquivo: C:\Users\Ihosana\AppData\Local\projeto
// Verifica se o arquivo foi aberto corretamente
if (arquivo == -1) {
     draw_text(x-110, _y_offset+140, "Nenhum registro encontrado!");
    return;
}
// Verificar se o arquivo está vazio
if (file_text_eof(arquivo)) {
    draw_text(x, _y_offset, "Arquivo vazio!");
    file_text_close(arquivo);
    return;  
}

while (!file_text_eof(arquivo)) {
    _linha = file_text_readln(arquivo); 
  
    if (string_pos("Nome:", _linha) > 0) {
        _nome= string_delete(_linha, 1, 5);  
    }

    if (string_pos("Pontuação:", _linha) > 0) {
        _pontuacao = real(string_delete(_linha, 1, 10));
        texto_lista[array_length_1d(texto_lista)] = [_nome, _pontuacao];  
    }
}

file_text_close(arquivo);

function compare_pontuacao(_a, _b) {
    if (_a[1] < _b[1]) {
        return 1;
    } else if (_a[1] > _b[1]) {
        return -1;
    } else {
        return 0;
    }
}

// Ordena o array texto_lista de acordo com a pontuação
array_sort(texto_lista, compare_pontuacao);
}else if(global.fases==3){
arquivo = file_text_open_read("cadastroFase3.txt");
//caminho onde estar salvando o arquivo: C:\Users\Ihosana\AppData\Local\projeto
// Verifica se o arquivo foi aberto corretamente
if (arquivo == -1) {
     draw_text(x-110, _y_offset+140, "Nenhum registro encontrado!");
    return;
}
// Verificar se o arquivo está vazio
if (file_text_eof(arquivo)) {
    draw_text(x, _y_offset, "Arquivo vazio!");
    file_text_close(arquivo);
    return;  
}

while (!file_text_eof(arquivo)) {
    _linha = file_text_readln(arquivo); 
  
    if (string_pos("Nome:", _linha) > 0) {
        _nome= string_delete(_linha, 1, 5);  
    }

    if (string_pos("Pontuação:", _linha) > 0) {
        _pontuacao = real(string_delete(_linha, 1, 10));
        texto_lista[array_length_1d(texto_lista)] = [_nome, _pontuacao];  
    }
}

file_text_close(arquivo);

function compare_pontuacao(_a, _b) {
    if (_a[1] < _b[1]) {
        return 1;
    } else if (_a[1] > _b[1]) {
        return -1;
    } else {
        return 0;
    }
}

// Ordena o array texto_lista de acordo com a pontuação
array_sort(texto_lista, compare_pontuacao);
}
