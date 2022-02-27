function updateValues() {
	
	var response_map = ds_map_find_value(global.baseJsonStructure, "game");
	ds_map_replace_map(response_map, "values", global.values);
	
	ds_map_replace_map(global.baseJsonStructure, "game", response_map);
	show_debug_message("Updated values");
	show_debug_message(global.values);
}
