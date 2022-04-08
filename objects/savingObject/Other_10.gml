/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (instance_exists(textInput)){
	
	var url = "https://juegoscognitivos.cl/php/game-instances/data/create_user";
	var map = ds_map_create();
	ds_map_add(map, "Content-Type", "application/json");

	var dia = ""
	var mes = ""
	var anno = ""

	if (variable_global_exists("msg")){
		ds_map_destroy(global.msg);	
	}
	global.msg = ds_map_create();
	
	for (var i = 0; i < instance_number(textInput); ++i)
	{
		
		input_[i] = instance_find(textInput,i);
		if (input_[i].id_input != "rut"){
			ds_map_add(global.msg, input_[i].id_input, input_[i].Text);
			if(input_[i].id_input == "dia"){
			dia = input_[i].Text
			}else if (input_[i].id_input == "mes"){
			mes = input_[i].Text		
			}else if (input_[i].id_input == "año"){
			anno = input_[i].Text
			}
			
		}else {
			var t_str = string_digits(input_[i].Text);
			ds_map_add(global.msg, input_[i].id_input, t_str);
		}
		
		
	}
	
	fecha_ = dia + "/" + mes + "/" + anno
	
	for (var i = 0; i < instance_number(Obj_menu_combobox); ++i ){
		input_[i] = instance_find(Obj_menu_combobox,i);
		if (input_[i].ID_ == "sexo"){
			show_debug_message("estoy en sexo")
			if (input_[i].text == "M"){
				var sex = 1
			}else if (input_[i].text == "F"){
				var sex = 2
			}
			ds_map_add(global.msg, input_[i].ID_,sex);	
		}else{
			ds_map_add(global.msg, input_[i].ID_, input_[i].text);
		}	
	}
	//ds_map_add(global.msg, "apellido", "bla");
	ds_map_add(global.msg, "dv", "bla");
	//ds_map_add(global.msg, "sexo", "bla");
	//ds_map_add(global.msg, "nacionalidad", "bla");
	//ds_map_add(global.msg, "escolaridad", "bla");
	//ds_map_add(global.msg, "salud", "bla");
	ds_map_add(global.msg,"borndate" , fecha_);
	show_debug_message(json_encode(global.msg))
	
	create_user_req = http_request(url, "POST", map, json_encode(global.msg));
	
	ds_map_destroy(map);

}