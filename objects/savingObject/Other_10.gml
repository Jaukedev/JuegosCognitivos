/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (instance_exists(textInput)){
	
	var dia = 0
	var mes = 0
	var anno = 0
	var url = "https://juegoscognitivos.cl/php/game-instances/data/create_user";

	
	if (variable_global_exists("msg")){
		ds_map_destroy(global.msg);	
	}
	global.msg = ds_map_create();
	
	
	
	for (var i = 0; i < instance_number(textInput); ++i)
	{
		
		input_[i] = instance_find(textInput,i);
		if (input_[i].id_input == "rut"){
			var t_str = string_digits(input_[i].Text);
			ds_map_add(global.msg, input_[i].id_input, t_str);		
		}else if (input_[i].id_input != "rut"){
			
			if(input_[i].id_input == "dia"){
			dia = input_[i].Text
			}else if (input_[i].id_input == "mes"){
			mes = input_[i].Text		
			}else if (input_[i].id_input == "año"){
			anno = input_[i].Text
			}else{
				ds_map_add(global.msg, input_[i].id_input, input_[i].Text);
			}
		}
		
		
	}
	fecha_ = string(dia) + "/" + string(mes) + "/" +string(anno) //date_create_datetime(anno,mes,dia,0,0,0)//
	
	for (var i = 0; i < instance_number(Obj_menu_combobox); ++i ){
		input_[i] = instance_find(Obj_menu_combobox,i);
		ds_map_add(global.msg, input_[i].ID_, input_[i].text);	
	}
	
	
	//ds_map_add(global.msg, "apellido", "bla");
	ds_map_add(global.msg, "dv", "bla");
	//ds_map_add(global.msg, "sexo", "bla");
	//ds_map_add(global.msg, "nacionalidad", "bla");
	//ds_map_add(global.msg, "escolaridad", "bla");
	//ds_map_add(global.msg, "salud", "bla");
	ds_map_add(global.msg,"borndate" , fecha_);
	var map = ds_map_create();
	
	ds_map_add(map,"Content-Type", "application/json");
	ds_map_add(map,"Access-Control-Allow-Origin","*");
	ds_map_add(map,"Access-Control-Allow-Methods", "POST, GET, PUT, DELETE, OPTIONS")
	//ds_map_add(map,"Access-Control-Allow-Credentials", "true")
	ds_map_add(map,"Access-Control-Allow-Headers", "Origin, X-Requested-With, X-WP-Nonce, Content-Type, Accept, Authorization. Access-Control-Allow-Origin")
	
	//

	show_debug_message(json_encode(global.msg))
	show_debug_message(json_encode(map))
	show_debug_message(map)
	
	create_user_req = http_request(url, "POST", map, json_encode(global.msg));
	
	ds_map_destroy(map);

}