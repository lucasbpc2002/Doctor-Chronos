
texto_lista = [];
var arquivo, linha, nome, pontuacao;
arquivo = file_text_open_read("cadastro.txt");
//caminho onde estar salvando o arquivo: C:\Users\Ihosana\AppData\Local\projeto
// Verifica se o arquivo foi aberto corretamente
if (arquivo == -1) {
     draw_text(x-110, y_offset+140, "Nenhum registro encontrado!");
    return;
}
// Verificar se o arquivo está vazio
if (file_text_eof(arquivo)) {
    draw_text(x, y_offset, "Arquivo vazio!");
    file_text_close(arquivo);
    return;  
}

while (!file_text_eof(arquivo)) {
    linha = file_text_readln(arquivo); 
  
    if (string_pos("Nome:", linha) > 0) {
        nome = string_delete(linha, 1, 5);  
    }

    if (string_pos("Pontuação:", linha) > 0) {
        pontuacao = real(string_delete(linha, 1, 10));
        texto_lista[array_length_1d(texto_lista)] = [nome, pontuacao];  
    }
}

file_text_close(arquivo);

function compare_pontuacao(a, b) {
    if (a[1] < b[1]) {
        return 1;
    } else if (a[1] > b[1]) {
        return -1;
    } else {
        return 0;
    }
}

// Ordena o array texto_lista de acordo com a pontuação
array_sort(texto_lista, compare_pontuacao);
