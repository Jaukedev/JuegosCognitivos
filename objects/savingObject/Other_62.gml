/// @description Insert description here
// You can write your code in this editor
if (create_user_req == ds_map_find_value(async_load, "id")){
	show_debug_message("estoy en el evento asincronico")
	show_debug_message(json_decode(ds_map_find_value(async_load, "status")))
	show_debug_message(json_decode(ds_map_find_value(async_load, "result")))
	show_debug_message(json_decode(ds_map_find_value(async_load, "id")))
	show_debug_message(json_encode(global.msg))
	if (ds_map_find_value(async_load, "status") == 0)   {
		//show_debug_message("Error de guardado 2");
		r_str = json_decode(ds_map_find_value(async_load, "result"));
		if (r_str == -1){
			show_debug_message("Error de guardado");
		}
		else{
			show_debug_message("Usuario creado");
			global.token = "123";
			var url = "https://juegoscognitivos.cl/php/game-instances/data/load";
			global.saveEventDataUrl = "https://juegoscognitivos.cl/php/game-instances/data/save";
			var msg = ds_map_create();
			ds_map_add(msg, "key", global.msg[? "rut"]);
			var map = ds_map_create();
			ds_map_add(map, "Content-Type", "application/json");
			ds_map_add(map,"Access-Control-Allow-Origin","*")
			show_debug_message(map)
			show_debug_message(msg)
			
			param_getter_id = http_request(url, "POST", map, json_encode(msg));
			
			ds_map_destroy(map);
			ds_map_destroy(msg);
		}

	}
}
else if (login_user_req == ds_map_find_value(async_load, "id")){
	if (ds_map_find_value(async_load, "status") == 0)   {
		r_str = json_decode(ds_map_find_value(async_load, "result"));
		if (r_str == -1){
			show_debug_message("Error de guardado");
		}
		else{
			show_debug_message("Usuario logeado");
			global.token = "123";
			var url = "https://juegoscognitivos.cl/php/game-instances/data/load";
			global.saveEventDataUrl = "https://juegoscognitivos.cl/php/game-instances/data/save";
			var msg = ds_map_create();
			ds_map_add(msg, "key", global.msg[? "user"]);
			ds_map_add(global.msg, "rut",global.msg[? "user"] );
			var map = ds_map_create();
			ds_map_add(map, "Content-Type", "application/json");
			param_getter_id = http_request(url, "POST", map, json_encode(msg));
			ds_map_destroy(map);
			ds_map_destroy(msg);
			global.username = global.msg[? "user"];
		}
			
	}
}

else if (event_saver_id == ds_map_find_value(async_load, "id")){
	if (ds_map_find_value(async_load, "status") == 0)   {
		r_str = json_decode(ds_map_find_value(async_load, "result"));
		if (r_str == -1)
			show_debug_message("Error de guardado");
		else
			show_debug_message("Guardado");
			if (ds_map_exists(r_str, "game")) { 
				if (ds_map_exists(r_str[? "game"], "complete")) {
					if (r_str[? "game"][? "complete"] == true) {
						global.restart_next_end = true;	
						refresh();
					}
				}
			}
	}
}

else if (param_getter_id == ds_map_find_value(async_load, "id")) {
	cargando = false;
	show_debug_message(json_encode(async_load));
	if (ds_map_find_value(async_load, "status") == 0)   {
		r_str = json_decode(ds_map_find_value(async_load, "result"));
		if (r_str == -1)
			show_debug_message("Error de parametros");
		else {
			global.conectado = true;
			show_debug_message(ds_map_size(r_str));
			if (ds_map_exists(r_str, "u")) {
				var val = ds_map_find_value(r_str, "u");
				if (ds_map_exists(val, "username")) {
					global.username = ds_map_find_value(val, "username");
					show_debug_message(global.username);
				}
				if (ds_map_exists(val, "fullname")) {
					global.fullname = ds_map_find_value(val, "fullname");
					show_debug_message(global.fullname);
				}
				if (ds_map_exists(val, "max_score")) {
					global.highScore = ds_map_find_value(val, "max_score");
					show_debug_message(global.highScore);
				} 
				if (ds_map_exists(val, "time_left")) {
					global.timeUsed = ds_map_find_value(val, "time_left");
					show_debug_message(global.timeUsed);
				} else {
					global.timeUsed = 0;
				}
				if (ds_map_exists(val, "values")) {
					global.values = ds_map_find_value(val, "values");
					show_debug_message(global.values);
					if (is_string(global.values)) {
						global.values = json_decode(global.values);	
					}
					show_debug_message(global.values);
					if (not is_real(global.values)) {
						global.values = ds_map_create();
						global.values[? "erroresN1Memo"] = 0;
						global.values[? "erroresN2Memo"] = 0;
						global.values[? "erroresN3Memo"] = 0;
						global.values[? "tiempoN1Memo"] = 0;
						global.values[? "tiempoN2Memo"] = 0;
						global.values[? "tiempoN3Memo"] = 0;
						global.values[? "tiempoN1Simon"] = 0;
						global.values[? "tiempoN2Simon"] = 0;
						global.values[? "tiempoN3Simon"] = 0;
					} else {
						if (not ds_exists(global.values, ds_type_map)) {
							global.values = ds_map_create();
							global.values[? "erroresN1Memo"] = 0;
							global.values[? "erroresN2Memo"] = 0;
							global.values[? "erroresN3Memo"] = 0;
							global.values[? "tiempoN1Memo"] = 0;
							global.values[? "tiempoN2Memo"] = 0;
							global.values[? "tiempoN3Memo"] = 0;
							global.values[? "tiempoN1Simon"] = 0;
							global.values[? "tiempoN2Simon"] = 0;
							global.values[? "tiempoN3Simon"] = 0;
						} else {
							if (not ds_map_exists(global.values, "erroresN1Memo")) {
								global.values[? "erroresN1Memo"] = 0;
							}
							if (not ds_map_exists(global.values, "erroresN2Memo")) {
								global.values[? "erroresN2Memo"] = 0;
							}
							if (not ds_map_exists(global.values, "erroresN3Memo")) {
								global.values[? "erroresN3Memo"] = 0;
							}
							if (not ds_map_exists(global.values, "tiempoN1Memo")) {
								global.values[? "tiempoN1Memo"] = 0;
							}
							if (not ds_map_exists(global.values, "tiempoN2Memo")) {
								global.values[? "tiempoN2Memo"] = 0;
							}
							if (not ds_map_exists(global.values, "tiempoN3Memo")) {
								global.values[? "tiempoN3Memo"] = 0;
							}
							if (not ds_map_exists(global.values, "tiempoN1Simon")) {
								global.values[? "tiempoN1Simon"] = 0;
							}
							if (not ds_map_exists(global.values, "tiempoN2Simon")) {
								global.values[? "tiempoN2Simon"] = 0;
							}
							if (not ds_map_exists(global.values, "tiempoN3Simon")) {
								global.values[? "tiempoN3Simon"] = 0;
							}
							
						}
					}
					show_debug_message(global.values);
				} else {
					global.values = ds_map_create();
					global.values[? "erroresN1Memo"] = 0;
					global.values[? "erroresN2Memo"] = 0;
					global.values[? "erroresN3Memo"] = 0;
					global.values[? "tiempoN1Memo"] = 0;
					global.values[? "tiempoN2Memo"] = 0;
					global.values[? "tiempoN3Memo"] = 0;
					global.values[? "tiempoN1Simon"] = 0;
					global.values[? "tiempoN2Simon"] = 0;
					global.values[? "tiempoN3Simon"] = 0;
				}
			} else {
				show_debug_message("entro else")	
			}
			if (ds_map_exists(r_str, "p")) {
				var val = ds_map_find_value(r_str, "p");
				if (ds_map_exists(val, "enemigos_iniciales")) {
					global.enemigosIniciales = ds_map_find_value(val, "enemigos_iniciales");
					show_debug_message(global.enemigosIniciales);
				}
			}	
		}
	} else {
		show_debug_message("resultado de petición invalido");	
		global.timeUsed = 0;
	}
	/* 
	Secuencia post carga. Todo lo escrito debajo depende de la estructura del juego en cuestion
	Puede desencadenar la carga de una sala distinta, la activación o instanciado de un botón 
	en la sala actual y otros elementos.
	
	Por ejemplo, la secuencia comentada corresponde a un juego que posee tests internos.
	
	if (global.sessionLimit > global.sessionTime or global.toPostest == true) {
			buildEventJson();
			if (global.title == -1) {
				setPretest();
				show_debug_message("Pretest inicia");
				instance_create_layer(488, 416, "Instances", testStartBtn);	
			} else if (global.title == "PRETEST") {
				setPretest();
				if (global.entries < global.testEntries) {
					show_debug_message("Pretest avanzado");
					instance_create_layer(488, 416, "Instances", testStartBtn);	
				} else {
					if (global.toPostest == true) {
						setPostest();
						show_debug_message("Postest inicia");
						instance_create_layer(488, 416, "Instances", testStartBtn);	
					} else {
						startSession();
					}
				}
			} else if (global.title == "POSTEST") {
				setPostest();
				if (global.entries < global.testEntries) {
					show_debug_message("Postest avanzado");
					instance_create_layer(488, 416, "Instances", testStartBtn);	
				} else {
					startSession();
				}
			} else {
				show_debug_message("Mensaje: " + string(global.title));	
			}
		} else {
		show_debug_message("TL:"+string(global.sessionLimit));
		show_debug_message("TA:"+string(global.sessionTime));
		global.response = ds_map_find_value(async_load, "status");
		room_goto(waitingRoom);	
		}
		*/
		/* Para este demo, solo se crea el mapa del json y el objeto para iniciar la partida */
		buildEventJson();
		//instance_create_layer(488, 416, "GUI", inicio);	
		room_goto(rm_games);
	
}