global.score_certas = 0;
global.score_erradas = 0;

if(room = rm_room_menu_fases){
	global.score_certas = 0;
	global.score_erradas = 0;
}
global.score = global.life*(global.score_certas - global.score_erradas);