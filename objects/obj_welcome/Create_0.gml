/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
gui_height = 1080
gui_width = 1920

can_press = false;

alarm[0] = 10;



if (room == rm_0){
	IniDataIni();
	global.level = 1
	alarm[1] = room_speed;
}

if (!variable_global_exists("savingObjectInstance")) {
		global.savingObjectInstance = instance_create_depth(0,0,1,savingObject)
}

global.sound_mute = false
display_set_gui_size(gui_width,gui_height)

global.active_input = 0;


//1st init script
scr_alert_word()    // database word
scr_alert_init()    // set a beginning variable




//global.vkplay = virtual_key_add( gui_width/2 - 180, 800, 361,106, vk_enter);
//global.vkplayMemo = virtual_key_add( 200, 200, 745,106, vk_space);
//global.mute_btn = virtual_key_add( 20, 20, 128,128, ord("M"));

/*global.vklvl_1 = virtual_key_add( gui_width/2 - 478, gui_height/2 - 80, 275,275, vk_numpad1);
global.vklvl_2 = virtual_key_add( gui_width/2 - 163, gui_height/2 -80, 275,275, vk_numpad2);
global.vklvl_3 = virtual_key_add( gui_width/2 + 153, gui_height/2 - 80, 275, 275, vk_numpad3);
/*
global.vkplayMemo = virtual_key_add( room_width/2 - 373, room_height/2 - 226, 745,106, vk_space);

global.vkplaySimon = virtual_key_add( room_width/2 - 373, room_height/2 + 26, 745, 106, vk_control);
global.vkBack = virtual_key_add( 60, room_height-150, 361, 106, vk_backspace);