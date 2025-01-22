// Determinar a música correta para a sala atual
var target_music;

if (room == rm_room1) {
	audio_stop_sound(snd_music_menu);
    target_music = snd_music_Age_contemporanea;
} else if (room == rm_room2 ) {
	audio_stop_sound(snd_music_menu);
    target_music = snd_music_Age_media;
} else if (room == rm_room3) {
	audio_stop_sound(snd_music_menu);
    target_music = snd_music_Age_antiga;
} else {
    target_music = snd_music_menu;
}

// Verificar se a música atual é diferente da desejada
if (global.current_music != target_music) {
    // Parar a música anterior (se necessário)
    if (global.current_music != noone) {
        audio_stop_sound(global.current_music);
    }

    // Tocar a nova música apenas se não estiver tocando
    if (!audio_is_playing(target_music)) {
        audio_play_sound(target_music, 1, true);
    }

    // Atualizar a música atual
    global.current_music = target_music;
}
