/// @description Inserte aquí la descripción
// Puede escribir su código en este editor




//nivel
draw_sprite(nivel_sprite,global.level-1,gui_width/2,30)

draw_set_font(fuente_gui)
draw_text(gui_width-150,90, time)
draw_sprite(time_sprite,0,gui_width-200,120)

draw_set_font(fuente_gui)
draw_text(gui_width-150,190, errors)
draw_sprite(errors_sprite,0,gui_width-200,220)
/*if (global.sound_mute == false){
	draw_sprite(sound_mute,0,20,20)
} else {
	draw_sprite(sound_mute,1,20,20)
}*/

if (lvl_complete == 1){
	draw_sprite_ext(fondo_menu,0,0,0,4,4,0,c_white,0.5)
	draw_sprite_ext(cuadro_puntaje,0,gui_width/2 -681,gui_height/2 - 396,1,1,0,c_white,1)
	draw_set_font(fuente_gui)
	draw_set_color(c_green);
	draw_text(gui_width/2 -400,350, "¡Nivel completado!")
		draw_set_color(c_gray);
	draw_text(gui_width/2 -400,500, "Tiempo:")
	draw_text(gui_width/2 ,500, time)
	draw_text(gui_width/2 -400,600, "Errores:")
	draw_text(gui_width/2 ,600, errors)
	
	draw_sprite(botones,0, 372,798)
	draw_sprite(botones,1, 832,798)
	if global.level < 3 draw_sprite(botones,2, 1215,798)
}

