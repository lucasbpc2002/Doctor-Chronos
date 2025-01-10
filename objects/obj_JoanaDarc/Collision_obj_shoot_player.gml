instance_destroy(other);
global.life_chefe --;
if(global.life_chefe == 12){
scr_atualizar_pergunta(room)
room_goto(rm_room_quiz)
}
if(global.life_chefe == 8){
scr_atualizar_pergunta(room)
room_goto(rm_room_quiz)
}
if(global.life_chefe == 4){
scr_atualizar_pergunta(room)
room_goto(rm_room_quiz)
}
if(global.life_chefe == 0){
scr_atualizar_pergunta(room)
room_goto(rm_room_quiz)
}