// Movimento
hsp = (keyboard_check(vk_right) - keyboard_check(vk_left)) * speed_player;
vsp = (keyboard_check(vk_down) - keyboard_check(vk_up)) * speed_player;
// Movimentação com colisão
x += hsp;
if (place_meeting(x, y, Obj_wall) || place_meeting(x, y, Obj_tree)) {
x -= hsp;
}

y += vsp;
if (place_meeting(x, y, Obj_wall) || place_meeting(x, y, Obj_tree)) {
y -= vsp;

}

// Trocar sprite conforme direção
if (hsp > 0) {
sprite_index = spr_player_right;
dir = "right";
}
else if (hsp < 0) {
sprite_index = spr_player_left;
dir = "left";
}
else if (vsp > 0) {
sprite_index = spr_player_down;
dir = "down";
}
else if (vsp < 0) {
sprite_index = spr_player_up;
dir = "up";
}
// Atacar
if (keyboard_check_pressed(vk_space)) {
var atk = instance_create_layer(x, y, "Instances", Obj_sword);
atk.direcao = dir; 
// Envia a direção para o objeto da espada
}