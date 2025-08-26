/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// Se o player existir, o inimigo persegue
if (instance_exists(Obj_player)) {
move_towards_point(Obj_player.x, Obj_player.y, speed_enemy);
}
// Verifica colisão com player
if (place_meeting(x, y, Obj_player)) {
// Executa código dentro do player
with (Obj_player) {
// Define posição aleatória para respawn (dentro dos limites da sala)
var newX = irandom_range(50, room_width - 50);
var newY = irandom_range(50, room_height - 50);
// Mostra uma mensagem na tela (opcional)
show_message("Você foi derrotado! Respawnando...");
// Destroi o player atual
instance_destroy();
// Cria um novo player no ponto salvo
instance_create_layer(newX, newY, "Instances", Obj_player);
}
}
