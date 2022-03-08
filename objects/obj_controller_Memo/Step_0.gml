/// @description User input & win conditions

//user input

if(keyboard_check_pressed(vk_escape)) game_restart();


//win conditions
if(matches_found == total_matches)
{
	show_debug_message("you won! Press any key to restart!");
	
	obj_interfaz_Memo.lvl_complete = 1;
	obj_interfaz_Memo.alarm[1] = room_speed;
	matches_found = -1;
	
}

/*if(matches_found < 0)
{
	if(keyboard_check_pressed(ord("R"))) {
		if (variable_global_exists("savingObjectInstance")) {
			with (global.savingObjectInstance) {
				event_user(9);
			}
		}
		room_restart();	
	}
}*/

if(keyboard_check_pressed(vk_backspace)) {
		global.userResponse = "Salir de Memorize";
		global.exercise = "memorize";
		global.response = "Salir";
		global.origin = "memorize";
		global.description = "El usuario no ha completado el nivel";
		if (variable_global_exists("savingObjectInstance")) {
		with (global.savingObjectInstance) {
			event_user(12);
			event_user(11);
			event_user(9);
		}
		audio_play_sound(button,1,false)
		audio_stop_sound(music)
		room_goto(rm_memo_select);
	}
}
	
///cuenta lo que tarda en responder 
if(bandera_puede_contar == true){
	tiempo_delta = (delta_time/1000) + tiempo_delta
}