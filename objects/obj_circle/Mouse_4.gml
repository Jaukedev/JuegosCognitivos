/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
var sequence = obj_controller_Simon.sequence_;
var ac_recording = obj_controller_Simon.ac_recording;
var ac_sequence = obj_controller_Simon.ac_sequence;
if (obj_controller_Simon.recording) {
	if (ac_recording < ac_sequence) {
		show_debug_message("secuence: "+ string(sequence[ac_recording])+ ", id: "+ string(id_));
		if (sequence[ac_recording] == id_){
			image_xscale += 0.2;
			image_yscale += 0.2;
			alarm[1] = room_speed*2;
			obj_controller_Simon.ac_recording++;
			reproducirSonido(image_index);

			global.scoreCounter += 100;
			global.userResponse = "Tramo de secuencia existoso";
			global.exercise = "seguir al secuencia";
			global.response = "Acierto!";
			global.origin = "secuencia";
			global.description = "Tramo de secuencia existoso";
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
			global.scoreCounter += 100;
			global.userResponse = "Error en la secuencia";
			global.exercise = "seguir al secuencia";
			global.response = "Error!";
			global.origin = "secuencia";
			global.description = "Tramo de secuencia erróneo";
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
	