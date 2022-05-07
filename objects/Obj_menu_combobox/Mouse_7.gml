/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (position_meeting(mouse_x,mouse_y,self)){
	if (instance_exists(Obj_combobox)){
	with (Obj_combobox){
		instance_destroy();
	}
	}else{
		var yIncrement = sprite_get_height(Spr_combobox)
		var yy = y + yIncrement-64
		show_debug_message("asd")
		for (var i = 0; i < ds_list_size(miLista); i++){
			show_debug_message(i)
			var item = instance_create_depth(x, yy,-1,Obj_combobox)
			show_debug_message(i)
			item.text = ds_list_find_value(miLista,i);
			item.ID_ = ID_
			yy += yIncrement -45
		
		}
	
	}

}else
{
	if (!position_meeting(mouse_x,mouse_y,self)){
		if (instance_exists(Obj_combobox)){
			with(Obj_combobox){
				instance_destroy()
			}
	
		}
	}
}