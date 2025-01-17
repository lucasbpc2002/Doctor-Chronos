if(room = rm_comoJogar){
	room_goto(rm_room_menu)
}else if (room =  rm_comoMovimentar){
	room_goto(rm_comoJogar)
}else if(room = rm_comoAtirar){
	room_goto(rm_comoMovimentar)
}else if (room = rm_comoQuiz){
	room_goto(rm_comoAtirar)
}else{
	room_goto(rm_room_menu_fases)
}