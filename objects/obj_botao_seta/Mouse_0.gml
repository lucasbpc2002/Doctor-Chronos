if(room = rm_comoJogar){
	room_goto(rm_comoMovimentar)
}else if (room =  rm_comoMovimentar){
	room_goto(rm_comoAtirar)
}else if(room = rm_comoAtirar){
	room_goto(rm_comoQuiz)
}else if (room = rm_comoQuiz){
	room_goto(rm_room_menu)
}