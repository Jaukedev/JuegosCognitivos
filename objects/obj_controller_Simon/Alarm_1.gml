/// @description Manejo de largo de secuencia
// Puede escribir su código en este editor

for (var i = 0; i < ac_sequence; i++) {
	var index = sequence_[i];
	var layerelement = inst_sequence[index];
	
	//var inst = layer_instance_get_instance(layerelement);
	layerelement.alarm[0] = 2*room_speed*(i+1);
	
	show_debug_message("Instance " + string(i) + ": " + string(index));

}


alarm[2] = 2*room_speed*(ac_sequence + 2)
