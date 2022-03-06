/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
var sequence = obj_controller_Simon.sequence_;
var ac_recording = obj_controller_Simon.ac_recording;
var ac_sequence = obj_controller_Simon.ac_sequence;
if (obj_controller_Simon.recording) {
	if (ac_recording < ac_sequence) {
		if (ac_recording == 0){
		obj_controller_Simon.tiempo_pivote = obj_controller_Simon.tiempo_delta
		}
		if (ac_recording == (ac_sequence-1)){
		obj_controller_Simon.tiempo_respuesta = (obj_controller_Simon.tiempo_delta - obj_controller_Simon.tiempo_pivote)
		obj_controller_Memo.tiempo_delta = 0;
		global.intento++;
		}
		show_debug_message("secuence: "+ string(sequence[ac_recording])+ ", id: "+ string(id_));
		if (sequence[ac_recording] == id_){
			image_xscale += 0.2;
			image_yscale += 0.2;
			alarm[1] = room_speed*2;
			obj_controller_Simon.ac_recording++;
			reproducirSonido(image_index);

			global.scoreCounter += 100;
			global.userResponse = string(obj_controller_Simon.tiempo_respuesta);
			global.exercise = " ";
			global.response = "Acierto!";
			global.origin = " ";
			global.description = " ";
			global.gameTitle = "Seguir la secuencia";
			////////////////////////////////////////////////////////////////
			
			
			////////////////////////////////////////////////////////////////
			if (variable_global_exists("savingObjectInstance")) {
			with (global.savingObjectInstance) {
				event_user(12);
			}
			}
			if (variable_global_exists("savingObjectInstance")) {
				with (global.savingObjectInstance) {
					event_user(11);
				}
			}
		} else {
			global.scoreCounter -= 100;
			global.userResponse = string(obj_controller_Simon.tiempo_respuesta);
			global.exercise = " ";
			global.response = "Error!";
			global.origin = " ";
			global.description = " ";
			global.gameTitle = "Seguir la secuencia";
			show_debug_message("seguiendo la secuencia")
			if (variable_global_exists("savingObjectInstance")) {
			with (global.savingObjectInstance) {
				event_user(12);
			}
			}
			if (variable_global_exists("savingObjectInstance")) {
				with (global.savingObjectInstance) {
					event_user(11);
				}
			}
			if (variable_global_exists("savingObjectInstance")) {
			with (global.savingObjectInstance) {
				event_user(9);
			}
			}

			obj_interfaz_Simon.game_over = 1
			obj_interfaz_Simon.alarm[1] = room_speed;
			obj_controller_Simon.recording = false;
			obj_controller_Simon.playing = false;
		}
	}else {
		room_restart();
	}
} 
	