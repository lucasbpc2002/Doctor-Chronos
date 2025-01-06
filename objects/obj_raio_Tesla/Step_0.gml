/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// Decrementa o timer
timer--;

// Destrói o raio após sua duração
if (timer <= 0) {
    instance_destroy();
}