/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (instance_exists(textInput)){
	
	var url = "https://juegoscognitivos.cl/php/game-instances/data/create_user";
	var map = ds_map_create();
	ds_map_add(map, "Content-Type", "application/json");
	var bandera_send_request = true 

	var dia = ""
	var mes = ""
	var anno = ""
	
	var pass = ""
	var pass2 = ""

	if (variable_global_exists("msg")){
		ds_map_destroy(global.msg);	
	}
	global.msg = ds_map_create();
	
	for (var i = 0; i < instance_number(textInput); ++i)
	{
		input_[i] = instance_find(textInput,i);
		if (input_[i].id_input == "rut"){
			var largo = string_length(input_[i].Text)
			if (largo < 7 || largo > 8){
				bandera_send_request = false
				scr_alert_add(1)
			}
		}
		if(input_[i].id_input == "email"){
				if(input_[i].Text == ""){
					scr_alert_add(12)
					bandera_send_request = false
				}
			}
		
		if(input_[i].id_input == "clave"){
				pass = input_[i].Text;
				if(input_[i].Text == ""){
					scr_alert_add(3)
					bandera_send_request = false
				}
			}
			if(input_[i].id_input == "clave2"){
				pass2 = input_[i].Text;
				if(input_[i].Text == ""){
					scr_alert_add(4)
					bandera_send_request = false
				}
			}
			if(input_[i].id_input == "nombre"){
				if(input_[i].Text == ""){
					scr_alert_add(0)
					bandera_send_request = false
				}
			}if(input_[i].id_input == "apellido"){
				if(input_[i].Text == ""){
					scr_alert_add(20)
					bandera_send_request = false
				}
			}
			
		if(input_[i].id_input == "dia"){
			if (input_[i].Text == ""){
				scr_alert_add(17)
				bandera_send_request = false
			}else{
			dia = input_[i].Text
			}
		}else if (input_[i].id_input == "mes"){
			if (input_[i].Text == ""){
				scr_alert_add(18)
				bandera_send_request = false
			}else{
			mes = input_[i].Text
			}
		}else if (input_[i].id_input == "año"){
			if (input_[i].Text == ""){
				scr_alert_add(19)
				bandera_send_request = false
			}else{
			anno = input_[i].Text
			}
		}
		
		
		
		ds_map_add(global.msg, input_[i].id_input, input_[i].Text);
	
	}
	
	if (pass != pass2){
			scr_alert_add(5)
			bandera_send_request = false		
	}
	
	fecha_ = dia + "/" + mes + "/" + anno
	
	for (var i = 0; i < instance_number(Obj_menu_combobox); ++i ){
		input_[i] = instance_find(Obj_menu_combobox,i);
		if (input_[i].ID_ == "sexo"){
			if (input_[i].text == "M"){
				var sex = 1
			}else if (input_[i].text == "F"){
				var sex = 2
			}else if (input_[i].text == "Sexo"){// valida que el recuadro sexo esté seleccionado 
				bandera_send_request = false
				scr_alert_add(13)
			}
			ds_map_add(global.msg, input_[i].ID_,sex);	
		}else if(input_[i].ID_ == "Nacionalidad"){
			if (input_[i].text == "Nacionalidad"){// valida el recuadro de nacionalidad este seleccionado
				bandera_send_request = false
				scr_alert_add(14)
	
			}
		}else if (input_[i].ID_ == "salud"){
			if (input_[i].text == "Salud"){// valida el recuadro de salud este seleccionado
				bandera_send_request = false
				scr_alert_add(15)
	
			}
		}else if (input_[i].ID_ == "escolaridad"){
			if (input_[i].text == "Escolaridad"){// valida el recuadro de escolaridad este seleccionado
				bandera_send_request = false
				scr_alert_add(16)
			}
		}
		ds_map_add(global.msg, input_[i].ID_, input_[i].text);	
	
	}
	//ds_map_add(global.msg, "apellido", "bla");
	ds_map_add(global.msg, "dv", "bla");
	//ds_map_add(global.msg, "sexo", "bla");
	//ds_map_add(global.msg, "nacionalidad", "bla");
	//ds_map_add(global.msg, "escolaridad", "bla");
	//ds_map_add(global.msg, "salud", "bla");
	ds_map_add(global.msg,"borndate" , fecha_);
	show_debug_message(json_encode(global.msg))
	
	if (bandera_send_request == true){
	create_user_req = http_request(url, "POST", map, json_encode(global.msg));
	}
	
	ds_map_destroy(map);

}