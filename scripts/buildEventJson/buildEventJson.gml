///@function buildEventJson()
///@description Crea el mapa para y con los datos de la partida, o vacía los ejercicios de este.

function buildEventJson() {
	if (not ds_exists(global.baseJsonStructure, ds_type_map)) {
		global.baseJsonStructure = ds_map_create();
		var gamearray = ds_map_create();
		ds_map_add(gamearray, "user_name", global.msg[? "rut"]);
		show_debug_message("gamearay = ");
			show_debug_message(json_encode(gamearray))
		ds_map_add_map(global.baseJsonStructure, "game", gamearray);
		ds_map_add_list(global.baseJsonStructure, "exercises", ds_list_create());
	} else {
		ds_list_clear(global.baseJsonStructure[? "exercises"]);	
	}	
}
