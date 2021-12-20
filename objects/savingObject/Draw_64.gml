/*
/// @description Insert description here
// You can write your code in this editor

draw_set_font(hud_font);
draw_set_valign(fa_bottom);
draw_set_halign(fa_left);
draw_text_color(2, camera_get_view_height(0)+5, "Usuario: " + global.username, c_black, c_black, c_black, c_black, 0.3);
draw_text_color(-1, camera_get_view_height(0)+3, "Usuario: " + global.username, c_black, c_black, c_black, c_black, 1);
draw_text_color(1, camera_get_view_height(0)+1, "Usuario: " + global.username, c_black, c_black, c_black, c_black, 1);
draw_text_color(1, camera_get_view_height(0)+3, "Usuario: " + global.username, c_black, c_black, c_black, c_black, 1);
draw_text_color(-1, camera_get_view_height(0)+1, "Usuario: " + global.username, c_black, c_black, c_black, c_black, 1);
draw_text_color(0, camera_get_view_height(0)+2, "Usuario: " + global.username, c_orange, c_orange, c_white, c_white, 1);

draw_set_halign(fa_right);
draw_text_color(camera_get_view_width(0), camera_get_view_height(0)+5, "Puntaje mayor: " + string(global.highScore), c_black, c_black, c_black, c_black, 0.3);
draw_text_color(camera_get_view_width(0)-1, camera_get_view_height(0)+3, "Puntaje mayor: " + string(global.highScore), c_black, c_black, c_black, c_black, 1);
draw_text_color(camera_get_view_width(0)-3, camera_get_view_height(0)+1, "Puntaje mayor: " + string(global.highScore), c_black, c_black, c_black, c_black, 1);
draw_text_color(camera_get_view_width(0)-3, camera_get_view_height(0)+3, "Puntaje mayor: " + string(global.highScore), c_black, c_black, c_black, c_black, 1);
draw_text_color(camera_get_view_width(0)-1, camera_get_view_height(0)+1, "Puntaje mayor: " + string(global.highScore), c_black, c_black, c_black, c_black, 1);
draw_text_color(camera_get_view_width(0)-2, camera_get_view_height(0)+2, "Puntaje mayor: " + string(global.highScore), c_orange, c_orange, c_white, c_white, 1);


// Este bloque esta en contra del uso de gamemaker al colocar calculos dentro del evento draw
if (cargando == true and room_get_name(room) != "CuartoEspera") {
	draw_set_color(make_color_hsv(max(0, ((i)*255/360)%256), 255, 0.8*255));
	i++;
	draw_set_halign(fa_center);
	draw_text(camera_get_view_width(0)/2, camera_get_view_height(0)-20, "CARGANDO");
}

if (not is_undefined(global.values)) {
	if (ds_exists(global.values, ds_type_map)) {
		draw_set_halign(fa_left);
		draw_text_color(2, camera_get_view_height(0)/2 - 20, "Ataques: " + string(global.values[? "ataques"]), c_black, c_white, c_black, c_white, 1);
		draw_text_color(2, camera_get_view_height(0)/2 + 20, "Derribos: " + string(global.values[? "derribos"]), c_white, c_black, c_white, c_black, 1);
		draw_set_halign(fa_right);
		draw_text_color(camera_get_view_width(0), camera_get_view_height(0)/2 - 20, "Redes: " + string(global.values[? "redes"]), c_black, c_white, c_black, c_white, 1);
		draw_text_color(camera_get_view_width(0), camera_get_view_height(0)/2 + 20, "Capturas: " + string(global.values[? "capturas"]), c_white, c_black, c_white, c_black, 1);
	}
}