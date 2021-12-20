/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


	for (var i = 0;i < instance_number(Obj_menu_combobox); i++){
		input_[i] = instance_find(Obj_menu_combobox,i);

		if (input_[i].ID_ == ID_){
			
			input_[i].text = text;	
		}
		
	}


with (Obj_combobox){
	instance_destroy()
}