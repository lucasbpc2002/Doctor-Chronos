instance_destroy(other);
global.life_chefe2 --;
if(global.life_chefe2 == 12){
scr_atualizar_pergunta(room)
room_goto(rm_room_quiz)
}
if(global.life_chefe2 == 8){
scr_atualizar_pergunta(room)
room_goto(rm_room_quiz)
}
if(global.life_chefe2 == 4){
scr_atualizar_pergunta(room)
room_goto(rm_room_quiz)
}
if(global.life_chefe2 == 0){
scr_atualizar_pergunta(room)
room_goto(rm_room_quiz)
}