/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
can_click = 1;

if (lvl_complete == 1){
	if (global.level == 1){
		show_debug_message("guardado nivel 1")

		if(global.tiempoN1Simon == 0) {
			global.tiempoN1Simon = time;
		} else if (global.tiempoN1Simon > time){
			global.tiempoN1Simon = time;
		}
	
	}


	if (global.level == 2){
		show_debug_message("guardado nivel 2")

		if(global.tiempoN2Simon == 0) {
			global.tiempoN2Simon = time;
		} else if (global.tiempoN2Simon > time){
			global.tiempoN2Simon = time;
		}
	
	}


	if (global.level == 3){
		show_debug_message("guardado nivel 3")

		if(global.tiempoN3Simon == 0) {
			global.tiempoN3Simon = time;
		} else if (global.tiempoN3Simon > time){
			global.tiempoN3Simon = time;
		}
	
	}
	
	if (variable_global_exists("savingObjectInstance")) {
		if global.conectado {
			if (global.level == 1){
				show_debug_message("guardado nivel 1")

				if(global.values[? "tiempoN1Simon"] == 0) {
					global.values[? "tiempoN1Simon"] = time;
				} else if (global.values[? "tiempoN1Simon"] > time){
					global.values[? "tiempoN1Simon"] = time;
				}
	
			}


			if (global.level == 2){
				show_debug_message("guardado nivel 2")

				if(global.values[? "tiempoN2Simon"] == 0) {
					global.values[? "tiempoN2Simon"] = time;
				} else if (global.values[? "tiempoN2Simon"] > time){
					global.values[? "tiempoN2Simon"] = time;
				}
	
			}


			if (global.level == 3){
				show_debug_message("guardado nivel 3")

				if(global.values[? "tiempoN3Simon"] == 0) {
					global.values[? "tiempoN3Simon"] = time;
				} else if (global.values[? "tiempoN3Simon"] > time){
					global.values[? "tiempoN3Simon"] = time;
				}
	
			}
		}
			with (global.savingObjectInstance) {
				event_user(9);
		}
	}
}
