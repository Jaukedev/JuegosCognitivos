/// @description User input in welcome screen
if (room == rm_01 and can_press == true){
	if(keyboard_check_pressed(vk_enter)) {
		if (variable_global_exists("savingObjectInstance")) {
			with (global.savingObjectInstance) {
			event_user(1);
		}
		}
		audio_play_sound(button,1,false)
		

	}
	if(keyboard_check_pressed(vk_f9)) {
		audio_play_sound(button,1,false)
		room_goto(rm_user_create);

	}
	if(keyboard_check_pressed(vk_escape)) {
		audio_play_sound(button,1,false)
		game_end();

	}
}

if (room == rm_user_create and can_press == true){
	if(keyboard_check_pressed(vk_subtract)) {
		audio_play_sound(button,1,false)
		room_goto(rm_01);
	}
	if(keyboard_check_pressed(vk_f9)) {
		audio_play_sound(button,1,false)
		 
		var pass = 0;
		var pass2 = 0;
		
		if(pass == pass2){
			if (variable_global_exists("savingObjectInstance")) {
				with (global.savingObjectInstance) {
						event_user(0);
				}
			}
		}else {
			scr_alert_add(5)	
		}
		
	}
}

if ((room == rm_games) and can_press == true){
	if(keyboard_check_pressed(vk_space)){
		audio_play_sound(button,1,false)
		room_goto(rm_memo_select);
	}
	if(keyboard_check_pressed(vk_control)) {
		audio_play_sound(button,1,false)
		room_goto(rm_simon_select);
	}
	if(keyboard_check_pressed(vk_backspace)) {
		audio_play_sound(button,1,false)
		room_goto(rm_01);
	}
}

if ((room == rm_memo_select) and can_press == true){
	if(keyboard_check_pressed(vk_numpad1)) {
		audio_stop_all()
		audio_play_sound(button,1,false)

		global.level = 1
		room_goto(rm_table_memo);
	}
	if(keyboard_check_pressed(vk_numpad2)) {
		if global.conectado {
			if (global.values[? "tiempoN1Memo"] != 0){
				audio_stop_all()
				audio_play_sound(button,1,false)
				global.level = 2
				room_goto(rm_table_memo);
			}
		}
		if (global.tiempoN1Memo != 0){
			audio_stop_all()
			audio_play_sound(button,1,false)
			global.level = 2
			room_goto(rm_table_memo);
		}
	}
	if(keyboard_check_pressed(vk_numpad3)) {
		if global.conectado {	
			if (global.values[? "tiempoN2Memo"] != 0){
				audio_stop_all()
				audio_play_sound(button,1,false)

				global.level = 3
				room_goto(rm_table_memo);
			}
		}
		if (global.tiempoN2Memo != 0){
			audio_stop_all()
			audio_play_sound(button,1,false)

			global.level = 3
			room_goto(rm_table_memo);
		}
	}
	if(keyboard_check_pressed(vk_backspace)) {
		audio_play_sound(button,1,false)
		room_goto(rm_games);
	}
}
if ((room == rm_simon_select) and can_press == true){
	if(keyboard_check_pressed(vk_numpad1)) {
		audio_stop_all()
		audio_play_sound(button,1,false)

		global.level = 1
		room_goto(rm_table_simon);
	}
	if(keyboard_check_pressed(vk_numpad2)) {
		if global.conectado {
			if (global.values[? "tiempoN1Simon"] != 0){
				audio_stop_all()
				audio_play_sound(button,1,false)
				global.level = 2
				room_goto(rm_table_simon);
			}
		}
		if (global.tiempoN1Simon != 0){
			audio_stop_all()
			audio_play_sound(button,1,false)
			global.level = 2
			room_goto(rm_table_simon);
		}
	}
	if(keyboard_check_pressed(vk_numpad3)) {
		if global.conectado {
			if (global.values[? "tiempoN2Simon"] != 0){
				audio_stop_all()
				audio_play_sound(button,1,false)

				global.level = 3
				room_goto(rm_table_simon);
			}
		}
		if (global.tiempoN2Simon != 0){
			audio_stop_all()
			audio_play_sound(button,1,false)

			global.level = 3
			room_goto(rm_table_simon);
		}
	}
	if(keyboard_check_pressed(vk_backspace)) {
		audio_play_sound(button,1,false)
		room_goto(rm_games);
	}
}


if (room != rm_table_memo and room != rm_table_simon) {
	if (global.sound_mute = false and !audio_is_playing(menu)) audio_play_sound(menu,10,true)
	
}
if keyboard_check_pressed(ord("M")){
		global.sound_mute= true
	}


