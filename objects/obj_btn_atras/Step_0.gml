/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if ((instance_exists(obj_interfaz_Memo) and obj_interfaz_Memo.lvl_complete == 1) or 
	(instance_exists(obj_interfaz_Simon) and (obj_interfaz_Simon.lvl_complete == 1 or obj_interfaz_Simon.game_over == 1))) {
	instance_deactivate_object(obj_btn_atras);
}