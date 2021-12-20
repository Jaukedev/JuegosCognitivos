/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
can_click = 1;

ini_open("datos.ini")
if (global.level == 1){
	/*show_debug_message("guardado nivel 1")
	if(global.values[? "erroresN1Memo"] == 0) {
		global.values[? "erroresN1Memo"] = errors;
	} else if (global.values[? "erroresN1Memo"] > errors){
		global.values[? "erroresN1Memo"] = errors;
	}
	if(global.values[? "tiempoN1Memo"] == 0) {
		global.values[? "tiempoN1Memo"] = time;
	} else if (global.values[? "tiempoN1Memo"] > time){
		global.values[? "tiempoN1Memo"] = time;
	}*/
	if(global.erroresN1Memo == 0) {
		global.erroresN1Memo = errors;
	} else if (global.erroresN1Memo > errors){
		global.erroresN1Memo = errors;
	}
	if(global.tiempoN1Memo == 0) {
		global.tiempoN1Memo = time;
	} else if (global.tiempoN1Memo > time){
		global.tiempoN1Memo = time;
	}
	
	ini_write_real("perfil","erroresN1Memo",global.erroresN1Memo)
	ini_write_real("perfil","tiempoN1Memo",global.tiempoN1Memo)
}


if (global.level == 2){
	/*show_debug_message("guardado nivel 2")
	if(global.values[? "erroresN2Memo"] == 0) {
		global.values[? "erroresN2Memo"] = errors;
	} else if (global.values[? "erroresN2Memo"] > errors){
		global.values[? "erroresN2Memo"] = errors;
	}
	if(global.values[? "tiempoN2Memo"] == 0) {
		global.values[? "tiempoN2Memo"] = time;
	} else if (global.values[? "tiempoN2Memo"] > time){
		global.values[? "tiempoN2Memo"] = time;
	}*/
	
	if(global.erroresN2Memo == 0) {
		global.erroresN2Memo = errors;
	} else if (global.erroresN2Memo > errors){
		global.erroresN2Memo = errors;
	}
	if(global.tiempoN2Memo == 0) {
		global.tiempoN2Memo = time;
	} else if (global.tiempoN2Memo > time){
		global.tiempoN2Memo = time;
	}
	ini_write_real("perfil","erroresN2Memo",global.erroresN2Memo)
	ini_write_real("perfil","tiempoN2Memo",global.tiempoN2Memo)
}


if (global.level == 3){
	/*show_debug_message("guardado nivel 3")
	if(global.values[? "erroresN3Memo"] == 0) {
		global.values[? "erroresN3Memo"] = errors;
	} else if (global.values[? "erroresN3Memo"]> errors){
		global.values[? "erroresN3Memo"] = errors;
	}
	if(global.values[? "tiempoN3Memo"] == 0) {
		global.values[? "tiempoN3Memo"] = time;
	} else if (global.values[? "tiempoN3Memo"] > time){
		global.values[? "tiempoN3Memo"] = time;
	}
	*/
	
	if(global.erroresN3Memo == 0) {
		global.erroresN3Memo = errors;
	} else if (global.erroresN3Memo > errors){
		global.erroresN3Memo = errors;
	}
	if(global.tiempoN3Memo == 0) {
		global.tiempoN3Memo = time;
	} else if (global.tiempoN3Memo > time){
		global.tiempoN3Memo = time;
	}
	
	ini_write_real("perfil","erroresN3Memo",global.erroresN3Memo)
	ini_write_real("perfil","tiempoN3Memo",global.tiempoN3Memo)
}	
if (global.conectado) {
		
		if (global.level == 1){
			show_debug_message("entro selector de niveles")
			show_debug_message("guardado nivel 1")
			if(global.values[? "erroresN1Memo"] == 0) {
				global.values[? "erroresN1Memo"] = errors;
			} else if (global.values[? "erroresN1Memo"] > errors){
				global.values[? "erroresN1Memo"] = errors;
			}
			if(global.values[? "tiempoN1Memo"] == 0) {
				global.values[? "tiempoN1Memo"] = time;
			} else if (global.values[? "tiempoN1Memo"] > time){
				global.values[? "tiempoN1Memo"] = time;
			}
	
		}


		if (global.level == 2){
			show_debug_message("guardado nivel 2")
			if(global.values[? "erroresN2Memo"] == 0) {
				global.values[? "erroresN2Memo"] = errors;
			} else if (global.values[? "erroresN2Memo"] > errors){
				global.values[? "erroresN2Memo"] = errors;
			}
			if(global.values[? "tiempoN2Memo"] == 0) {
				global.values[? "tiempoN2Memo"] = time;
			} else if (global.values[? "tiempoN2Memo"] > time){
				global.values[? "tiempoN2Memo"] = time;
			}
	
		}


		if (global.level == 3){
			show_debug_message("guardado nivel 3")
			if(global.values[? "erroresN3Memo"] == 0) {
				global.values[? "erroresN3Memo"] = errors;
			} else if (global.values[? "erroresN3Memo"]> errors){
				global.values[? "erroresN3Memo"] = errors;
			}
			if(global.values[? "tiempoN3Memo"] == 0) {
				global.values[? "tiempoN3Memo"] = time;
			} else if (global.values[? "tiempoN3Memo"] > time){
				global.values[? "tiempoN3Memo"] = time;
			}
	
		}
	}
	

ini_close()
	if (variable_global_exists("savingObjectInstance")) {
		with (global.savingObjectInstance) {
			show_debug_message("entro enevto usuario")
			event_user(9);
	}
}
