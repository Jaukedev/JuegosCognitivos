/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
switch level{
	case 1:
		level_key = vk_numpad1
		sprite_index = btn_nivel_1;
		break;
	case 2:
		level_key = vk_numpad2
		sprite_index = btn_nivel_2;
		break;
	case 3:
		level_key = vk_numpad3
		sprite_index = btn_nivel_3;
		break;
}
/*
if (game == "memo" and ((global.values[? "tiempoN1Memo"] == 0 and level == 2) or 
	(global.values[? "tiempoN2Memo"] == 0 and level == 3))){
		image_alpha= 0.5
}
if (game == "simon" and ((global.values[? "tiempoN1Simon"] == 0 and level == 2) or 
	(global.values[? "tiempoN2Simon"] == 0 and level == 3))){
		image_alpha= 0.5
}*/
	
if (game == "memo" and ((global.tiempoN1Memo == 0 and level == 2) or 
	(global.tiempoN2Memo == 0 and level == 3))){
		image_alpha= 0.5
}
if (game == "simon" and ((global.tiempoN1Simon == 0 and level == 2) or 
	(global.tiempoN2Simon == 0 and level == 3))){
		image_alpha= 0.5
}