/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

	
 if (global.active_input == id_input){
	 
	 
	 if(keyboard_check(vk_anykey) and string_length(Text)<limit){
		Text = Text + string(keyboard_string);
		keyboard_string = "";
	 }
	 
	 if(keyboard_check(vk_backspace) and !keyboard_check_pressed(vk_backspace) and delete_timer = 2){
		Text = string_delete(Text, string_length(Text),1)
		delete_timer = 0;
		keyboard_string = "";
	 }
	 if(keyboard_check_pressed(vk_backspace)){
		Text = string_delete(Text,string_length(Text),1);
		keyboard_string = "";
		delete_timer = -4;
	 }

	keyboard_string = "";
	keyboard_virtual_show(kbv_type_default, kbv_returnkey_default, kbv_autocapitalize_none, false);

	} else {
		
		keyboard_virtual_hide();

}

if (delete_timer != 2){
	delete_timer++;	
}
