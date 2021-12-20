/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(lvl_complete == 1 and can_click == 1){
	if(keyboard_check_pressed(vk_delete)) {
		audio_stop_all()
		audio_play_sound(button,1,false)
		
		room_goto(rm_simon_select);
	}
	if(keyboard_check_pressed(vk_add)) {
		
		if global.level < 3 {
			global.level++;
			audio_stop_all()
			audio_play_sound(button,1,false)
			room_restart();
		}
	}
	if(keyboard_check_pressed(ord("R"))) {
		audio_stop_all()
		audio_play_sound(button,1,false)
		room_restart();
	}
}
if(game_over == 1 and can_click == 1){
	if(keyboard_check_pressed(vk_delete)) {
		audio_stop_all()
		audio_play_sound(button,1,false)
		
		room_goto(rm_simon_select);
	}
	if(keyboard_check_pressed(ord("R"))) {
		audio_stop_all()
		audio_play_sound(button,1,false)
		room_restart();
	}
}
/*if (global.sound_mute = false and !audio_is_playing(music) and lvl_complete == 0 and game_over == 0) {
	audio_play_sound(music,10,true)
}*/
if (audio_is_playing(menu)) {
	audio_stop_sound(menu)
}
if(keyboard_check_pressed(vk_backspace)) {
		audio_play_sound(button,1,false)
		room_goto(rm_simon_select);
	}