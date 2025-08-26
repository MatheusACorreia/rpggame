// Posicionar golpe baseado na direção do player
switch (direcao) {
case "right":
x = Obj_player.x + 16;
y = Obj_player.y;
break;

case "left":
x = Obj_player.x - 16;
y = Obj_player.y;
break;

case "up":
x = Obj_player.x;
y = Obj_player.y - 16;
break;

case "down":
x = Obj_player.x;
y = Obj_player.y + 16;
break;
}
// Colisão com inimigo
if (place_meeting(x, y, Obj_enemy)) {
with (instance_place(x, y, Obj_enemy)) {
instance_destroy();

}
}
// Tempo de vida do golpe
lifetime --;
if (lifetime <= 0) {
instance_destroy();

}