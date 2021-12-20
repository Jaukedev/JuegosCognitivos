function updateScore() {
	var response_map = ds_map_find_value(global.baseJsonStructure, "game");
	ds_map_replace(response_map, "max_score", global.scoreCounter);
	ds_map_replace_map(global.baseJsonStructure, "game", response_map);
}
