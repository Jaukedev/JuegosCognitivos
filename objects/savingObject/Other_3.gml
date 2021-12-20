/// @description Al cerrar el juego, si la cola de envio no esta vacia, se envia todo con un cierre de ronda
// You can write your code in this editor
if(ds_exists(global.baseJsonStructure, ds_type_map)) {
	show_debug_message("entro json");
	if (array_length(ds_map_find_value(global.baseJsonStructure, "exercises")) != 0) {
		show_debug_message("entro exercises");
		global.timeStart = date_datetime_string(date_current_datetime());
		global.timeEnd = date_datetime_string(date_current_datetime());
		appendTo(4, "", true);
	}
}