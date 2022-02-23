/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (instance_exists(textInput)){
	global.token = "123";
	var url = "https://juegoscognitivos.cl/php/game-instances/data/login";
	var bandera_send_request = true
	
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
			if (input_[i].Text == "" ){
				bandera_send_request = false
				scr_alert_add(10)
			}else {
				bandera_send_request = true
			}
		}
		else {
			show_debug_message(string_length(input_[i].Text))
			var largo = string_length(input_[i].Text)
			if (largo < 7 || largo > 8){
				bandera_send_request = false
				scr_alert_add(1)
			}else{
				bandera_send_request = true
				var t_str = string_digits(input_[i].Text);
				ds_map_add(global.msg, input_[i].id_input, t_str);
			}
		}
		
	}
	
	show_debug_message(json_encode(global.msg))
	if (bandera_send_request == true){
		login_user_req = http_request(url, "POST", map, json_encode(global.msg));
	
	}
	ds_map_destroy(map);
	
}