/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (instance_exists(textInput)){
	global.token = "123";
	var url = "https://juegoscognitivos.cl/php/game-instances/data/login";

	
	var map = ds_map_create();
	ds_map_add(map, "Content-Type", "application/json");

	if (variable_global_exists("msg")){
		ds_map_destroy(global.msg);	
	}
	global.msg = ds_map_create();
	show_debug_message(instance_number(textInput))
	for (var i = 0; i < instance_number(textInput); ++i)
	{
		input_[i] = instance_find(textInput,i);
		if (input_[i].id_input != "user"){
			ds_map_add(global.msg, input_[i].id_input, input_[i].Text);
		}
		else {
			var t_str = string_digits(input_[i].Text);
			ds_map_add(global.msg, input_[i].id_input, t_str);
		}
		
	}
	show_debug_message(json_encode(global.msg))
	login_user_req = http_request(url, "POST", map, json_encode(global.msg));
	
	ds_map_destroy(map);
	
}