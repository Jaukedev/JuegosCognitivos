/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
tiempo_delta = (delta_time/1000) + tiempo_delta

if (recording and ac_recording == ac_sequence){
	if ac_sequence < number {
		recording = false;
		playing = true;
		ac_recording = 0;
		ac_sequence++;
		alarm[1] = room_speed;
	} else {
		obj_interfaz_Simon.lvl_complete = 1;
		obj_interfaz_Simon.alarm[1] = room_speed;
		recording = false;
		playing = false;
	}
	
}
if(keyboard_check_pressed(vk_backspace)) {
	global.userResponse = "Salir de Secuencia";
		global.exercise = "Seguir la secuencia";
		global.response = "Salir";
		global.origin = "secuencia";
		global.description = "El usuario no ha completado el nivel";
		if (variable_global_exists("savingObjectInstance")) {
		with (global.savingObjectInstance) {
			event_user(12);
			event_user(11);
			event_user(9);
		}
		audio_stop_sound(music)
		audio_play_sound(button,1,false)
		room_goto(rm_simon_select);
		
		}
	}
	
