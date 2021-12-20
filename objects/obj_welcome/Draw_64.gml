/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
display_set_gui_size(gui_width,gui_height);

draw_set_halign(fa_left)

if (room != rm_0 and room != rm_01 and room != rm_user_create){
	if (variable_global_exists("savingObjectInstance")) {
		draw_set_font(fuente_gui2)
		draw_set_color(c_white)
		draw_text(50, 20, string(global.username))

	}
}
/*if (global.sound_mute == false){
	draw_sprite(sound_mute,0,20,20)
} else {
	draw_sprite(sound_mute,1,20,20)
}
*/
if (room = rm_01) {
	draw_set_color(c_white)
	draw_set_font(fuente_gui_title)
	draw_text(300,140, "Juegos Cognitivos")
	draw_set_font(fuente_gui)
	draw_text(570,440, "Rut")
	draw_text(570,645, "Contrasena")
	//draw_sprite(btn_play,0,gui_width/2 - 180, 800)
	
	draw_text_ext_transformed(55,848, "¿No tienes cuenta?",10,1400,0.7,0.7,0)
}

if (room = rm_user_create) {
	draw_set_font(fuente_gui)
	draw_set_halign(fa_left)
	draw_text_ext_transformed(200,220, "Nombre",10,1400,0.7,0.7,0)
	draw_text_ext_transformed(200,320, "Apellidos",10,1400,0.7,0.7,0)
	draw_text_ext_transformed(200,420, "Rut",10,1400,0.7,0.7,0)
	draw_text_ext_transformed(200,510, "Contrasena",10,1400,0.7,0.7,0)
	draw_text_ext_transformed(200,570, "Repita",10,1400,0.7,0.7,0)
	draw_text_ext_transformed(200,620, "Contrasena",10,1400,0.7,0.7,0)
}
if (room = rm_games) {
	/*draw_sprite(btn_memo,0,gui_width/2 - 373, gui_height/2 - 226)
	draw_sprite(btn_simon,0,gui_width/2 - 373, gui_height/2 + 26)
	draw_sprite(btn_atras,0,60, gui_height-150)*/
}
if (room == rm_memo_select ) {
	draw_set_font(fuente_gui)
	if global.conectado {
		if (ds_exists(global.values, ds_type_map)) {
			
			draw_set_font(fuente_gui)
				//draw_sprite(btn_nivel_1,0,gui_width/2 - 478, gui_height/2 - 80)
				draw_sprite(errors_sprite,0,gui_width/2 - 338, gui_height/2 + 350)
				draw_text(gui_width/2 - 308, gui_height/2 + 360, string(global.values[? "erroresN1Memo"]))
				draw_sprite(time_sprite,0,gui_width/2 - 338, gui_height/2 + 250)
				draw_text(gui_width/2 - 308, gui_height/2 + 260, string(global.values[? "tiempoN1Memo"]))
	
			if (global.values[? "tiempoN1Memo"] != 0){
				//draw_sprite(btn_nivel_2,0,gui_width/2 - 163, gui_height/2 - 80)
				draw_sprite(errors_sprite,0,gui_width/2 -10, gui_height/2 + 350)
				draw_text(gui_width/2 + 20, gui_height/2 + 360, string(global.values[? "erroresN2Memo"]))
				draw_sprite(time_sprite,0,gui_width/2 -10, gui_height/2 + 250)
				draw_text(gui_width/2 + 20, gui_height/2 + 260, string(global.values[? "tiempoN2Memo"]))
			} else {
				//draw_sprite_ext(btn_nivel_2,0,gui_width/2 - 163, gui_height/2 - 80,1,1,0,c_white,0.5)
			}
	
			if (global.values[? "tiempoN2Memo"] != 0){
				//draw_sprite(btn_nivel_3,0,gui_width/2 + 153, gui_height/2 - 80)
				draw_sprite(errors_sprite,0,gui_width/2 + 290, gui_height/2 + 350)
				draw_text(gui_width/2 + 320, gui_height/2 + 360, string(global.values[? "erroresN3Memo"]))
				draw_sprite(time_sprite,0,gui_width/2 + 290, gui_height/2 + 250)
				draw_text(gui_width/2 + 320, gui_height/2 + 260, string(global.values[? "tiempoN3Memo"]))
			} else {
				//draw_sprite_ext(btn_nivel_3,0,gui_width/2 + 153, gui_height/2 - 80,1,1,0,c_white,0.5)
			}
		
	
		
		}
	}
	else {
		//draw_sprite(btn_atras,0,60, gui_height-150)
	
		draw_set_font(fuente_gui)
			//draw_sprite(btn_nivel_1,0,gui_width/2 - 478, gui_height/2 - 80)
		draw_sprite(errors_sprite,0,gui_width/2 - 338, gui_height/2 + 350)
		draw_text(gui_width/2 - 308, gui_height/2 + 360, string(global.erroresN1Memo))
		draw_sprite(time_sprite,0,gui_width/2 - 338, gui_height/2 + 250)
		draw_text(gui_width/2 - 308, gui_height/2 + 260, string(global.tiempoN1Memo))
	
		if (global.tiempoN1Memo != 0){
			//draw_sprite(btn_nivel_2,0,gui_width/2 - 163, gui_height/2 - 80)
			draw_sprite(errors_sprite,0,gui_width/2 -10, gui_height/2 + 350)
			draw_text(gui_width/2 + 20, gui_height/2 + 360, string(global.erroresN2Memo))
			draw_sprite(time_sprite,0,gui_width/2 -10, gui_height/2 + 250)
			draw_text(gui_width/2 + 20, gui_height/2 + 260, string(global.tiempoN2Memo))
		} else {
			//draw_sprite_ext(btn_nivel_2,0,gui_width/2 - 163, gui_height/2 - 80,1,1,0,c_white,0.5)
		}
	
		if (global.tiempoN2Memo != 0){
			//draw_sprite(btn_nivel_3,0,gui_width/2 + 153, gui_height/2 - 80)
			draw_sprite(errors_sprite,0,gui_width/2 + 290, gui_height/2 + 350)
			draw_text(gui_width/2 + 320, gui_height/2 + 360, string(global.erroresN3Memo))
			draw_sprite(time_sprite,0,gui_width/2 + 290, gui_height/2 + 250)
			draw_text(gui_width/2 + 320, gui_height/2 + 260, string(global.tiempoN3Memo))
		} else {
			//draw_sprite_ext(btn_nivel_3,0,gui_width/2 + 153, gui_height/2 - 80,1,1,0,c_white,0.5)
		}
	}
}

if (room == rm_simon_select) {
	//draw_sprite(btn_nivel_1,0,gui_width/2 - 478, gui_height/2 - 80)
	draw_set_font(fuente_gui)
	if global.conectado {
		if (ds_exists(global.values, ds_type_map)) {
			draw_sprite(time_sprite,0,gui_width/2 - 338, gui_height/2 + 250)
			draw_text(gui_width/2 - 308, gui_height/2 + 260, string(global.values[? "tiempoN1Simon"]))
	
			if (global.values[? "tiempoN1Simon"] != 0){
				//draw_sprite(btn_nivel_2,0,gui_width/2 - 163, gui_height/2 - 80)
				draw_sprite(time_sprite,0,gui_width/2 -10, gui_height/2 + 250)
				draw_text(gui_width/2 + 20, gui_height/2 + 260, string(global.values[? "tiempoN2Simon"]))
			} else {
				//draw_sprite_ext(btn_nivel_2,0,gui_width/2 - 163, gui_height/2 - 80,1,1,0,c_white,0.5)
			}
	
			if (global.values[? "tiempoN2Simon"] != 0){
				//draw_sprite(btn_nivel_3,0,gui_width/2 + 153, gui_height/2 - 80)
				draw_sprite(time_sprite,0,gui_width/2 + 290, gui_height/2 + 250)
				draw_text(gui_width/2 + 320, gui_height/2 + 260, string(global.values[? "tiempoN3Simon"]))
			} else {
				//draw_sprite_ext(btn_nivel_3,0,gui_width/2 + 153, gui_height/2 - 80,1,1,0,c_white,0.5)
			}
		}
		//draw_sprite(btn_atras,0,60, gui_height-150)
	}
	else {
		
		draw_sprite(time_sprite,0,gui_width/2 - 338, gui_height/2 + 250)
		draw_text(gui_width/2 - 308, gui_height/2 + 210, string(global.tiempoN1Simon))

		if (global.tiempoN1Simon != 0){
			//draw_sprite(btn_nivel_2,0,gui_width/2 - 163, gui_height/2 - 80)
			draw_sprite(time_sprite,0,gui_width/2 -10, gui_height/2 + 250)
			draw_text(gui_width/2 + 20, gui_height/2 + 210, string(global.tiempoN2Simon))
		} else {
			//draw_sprite_ext(btn_nivel_2,0,gui_width/2 - 163, gui_height/2 - 80,1,1,0,c_white,0.5)
		}
	
		if (global.tiempoN2Simon != 0){
			//draw_sprite(btn_nivel_3,0,gui_width/2 + 153, gui_height/2 - 80)
			draw_sprite(time_sprite,0,gui_width/2 + 290, gui_height/2 + 250)
			draw_text(gui_width/2 + 320, gui_height/2 + 210, string(global.tiempoN3Simon))
		} else {
			//draw_sprite_ext(btn_nivel_3,0,gui_width/2 + 153, gui_height/2 - 80,1,1,0,c_white,0.5)
		}
	}
}

if (room == rm_table_memo or room == rm_table_simon) {

	//draw_sprite(btn_atras,0,60, gui_height-150)
}
scr_alert_panel()       //draw alert panel
