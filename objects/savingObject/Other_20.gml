/// @description Envio de registros de eventos
var map = ds_map_create();
ds_map_add(map, "Content-Type", "application/json");

show_debug_message(json_encode(global.baseJsonStructure))
event_saver_id = http_request(global.saveEventDataUrl, "POST", map, json_encode(global.baseJsonStructure));
ds_map_destroy(map);
buildEventJson();