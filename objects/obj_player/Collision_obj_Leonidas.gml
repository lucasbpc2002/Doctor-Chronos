global.life --;
// Este código pode ser colocado no evento de colisão (ex: Collision com obj_inimigo)

// Pegue a direção da colisão (da posição do personagem até o objeto colidido)
var dx = x - other.x;
var dy = y - other.y;

// Calcula a distância entre o personagem e o objeto
var dist = point_distance(x, y, other.x, other.y);

// Normaliza o vetor para garantir que a direção tenha uma magnitude de 1
var dir_x = dx / dist;
var dir_y = dy / dist;

// Aplique um impulso para trás com uma certa força (ajuste a força conforme necessário)
var push_strength = 10; //A força do empurrão
var push_x = dir_x * push_strength;
var push_y = dir_y * push_strength;

// Aplica a força ao personagem
x += push_x;
y += push_y;