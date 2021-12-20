/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
gui_width = 1920
gui_height = 1080

errors = 0;
time = 0;
alarm[0] = room_speed;
lvl_complete = 0;
can_click = 0;
game_over = 0
/*
global.vkrestart = virtual_key_add( gui_width/2 -564,800, 128,128, ord("R"));
global.vklvl_sel = virtual_key_add(gui_width/2 -64,800, 128,128, vk_delete);
global.vknext = virtual_key_add( gui_width/2 + 436,800, 128,128, vk_add);
*/
if (variable_global_exists("savingObjectInstance")) {
	with (global.savingObjectInstance) {
		event_user(8);
	}
}