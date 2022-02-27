/// @description User Input on cards

//Only 2 cards will be open at the same time;
if(obj_controller_Memo.flipped_tiles == 2) exit;

// only if the card is not flip and flipping is legal move
if(flipped == false and obj_controller_Memo.can_flip)
{
		
	// Mark card as flipped
	flipped = true;
	
	// Trigger flipping animation
	is_flipping = true;
	
	// Retrieve the card id
	sprite_to_change = id.type; 
	
	// check if is already other card opened
	if(obj_controller_Memo.flipped_tiles == 0) // if not...
	{
		// store the id 
		obj_controller_Memo.last_tile = id;
		// record that a card is opened
		obj_controller_Memo.flipped_tiles++;
		obj_controller_Memo.tiempo_pivote = obj_controller_Memo.tiempo_delta
		show_debug_message(delta_time)
	}
	// if is already other card opened
	else if(obj_controller_Memo.flipped_tiles == 1)
	{
		// record that a card is opened
		obj_controller_Memo.flipped_tiles++;
		obj_controller_Memo.tiempo_respuesta = (obj_controller_Memo.tiempo_delta - obj_controller_Memo.tiempo_pivote)
		show_debug_message(delta_time)
		// check if the card matches the a card that already is opened
		if(obj_controller_Memo.last_tile.type == id.type) // if matches...
		{
			show_debug_message("match!");
			show_debug_message(string(obj_controller_Memo.tiempo_respuesta))
			
			// set the open cards to 0
			obj_controller_Memo.flipped_tiles = 0;
			// record that a match found
			obj_controller_Memo.matches_found++;
			
			global.scoreCounter += 100;
			global.userResponse = string(obj_controller_Memo.tiempo_respuesta);					//
			global.exercise = " ";
			global.response = "Match!";
			global.origin = "";
			global.description = " ";
			if (variable_global_exists("savingObjectInstance")) {
			with (global.savingObjectInstance) {
				event_user(12);
			}
			}
			if (variable_global_exists("savingObjectInstance")) {
				with (global.savingObjectInstance) {
					event_user(11);
				}
			}
		}
		// if not matches...
		else
		{
			obj_interfaz_Memo.errors++ ;
			show_debug_message(obj_interfaz_Memo.errors)
			show_debug_message(string(obj_controller_Memo.tiempo_respuesta))
			global.scoreCounter -= 100;
			global.userResponse = string(obj_controller_Memo.tiempo_respuesta)
			global.exercise = " ";
			global.response = "Error!";
			global.origin = " ";
			global.description = " ";
			if (variable_global_exists("savingObjectInstance")) {
			with (global.savingObjectInstance) {
				event_user(12);
			}
			}
			if (variable_global_exists("savingObjectInstance")) {
				with (global.savingObjectInstance) {
					event_user(11);
				}
			}
			
			// Flip the card back after 60 steps
			alarm[0] = 60;
		}
		
	}
		
}