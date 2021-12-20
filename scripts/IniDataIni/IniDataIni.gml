// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function IniDataIni(){
	// Perfil de Usuario
	
	ini_open("datos.ini")
	global.rut = ini_read_real("perfil","rut",0);
	global.nombre = ini_read_string("perfil","nombre","Usuario Anónimo");
	global.fechaNacimiento = ini_read_string("perfil","nombre","01/01/1900")
	global.sexo = ini_read_string("perfil","nombre","M");
	global.nacionalidad = ini_read_string("perfil","nombre","Chile");
	global.estudios = ini_read_string("perfil","nombre","Superior completa");
	global.salud = ini_read_string("perfil","nombre","");
	
	global.tiempoTotalLoginLogout = ini_read_real("perfil","tiempoTotalLoginLogout",0);
	
	// Variables Encontrar la pareja
	global.tiempoTotalMemo = ini_read_real("perfil","tiempoTotalMemo",0);

	global.erroresMaxTotalesMemo = ini_read_real("perfil","erroresMaxTotalesMemo",0);
	
	global.erroresMaxN1Memo = ini_read_real("perfil","erroresMaxN1Memo",0);
	global.erroresMaxN2Memo = ini_read_real("perfil","erroresMaxN2Memo",0);
	global.erroresMaxN3Memo = ini_read_real("perfil","erroresMaxN3Memo",0);

	global.erroresN1Memo = ini_read_real("perfil","erroresN1Memo",0);
	global.erroresN2Memo = ini_read_real("perfil","erroresN2Memo",0);
	global.erroresN3Memo = ini_read_real("perfil","erroresN3Memo",0);
	
	global.tiempoN1Memo = ini_read_real("perfil","tiempoN1Memo",0);
	global.tiempoN2Memo = ini_read_real("perfil","tiempoN2Memo",0);
	global.tiempoN3Memo = ini_read_real("perfil","tiempoN3Memo",0);
	
	global.nivelMaxMemo = ini_read_real("perfil","nivelMaxMemo",1);
	
	// Variables Seguir la secuencia
	global.tiempoTotalSimon = ini_read_real("perfil","tiempoTotalSimon",0);

	global.erroresMaxTotalesSimon = ini_read_real("perfil","erroresMaxTotalesSimon",0);
	
	global.erroresMaxN1Simon = ini_read_real("perfil","erroresMaxN1Simon",0);
	global.erroresMaxN2Simon = ini_read_real("perfil","erroresMaxN2Simon",0);
	global.erroresMaxN3Simon = ini_read_real("perfil","erroresMaxN3Simon",0);

	global.erroresN1Simon = ini_read_real("perfil","erroresN1Simon",0);
	global.erroresN2Simon = ini_read_real("perfil","erroresN2Simon",0);
	global.erroresN3Simon = ini_read_real("perfil","erroresN3Simon",0);
	
	global.tiempoN1Simon = ini_read_real("perfil","tiempoN1Simon",0);
	global.tiempoN2Simon = ini_read_real("perfil","tiempoN2Simon",0);
	global.tiempoN3Simon = ini_read_real("perfil","tiempoN3Simon",0);
	
	global.nivelMaxSimon = ini_read_real("perfil","nivelMaxSimon",1);
	
	global.actions_quantity = ini_read_real("perfil","actions_quantity",0);
	
	for(var i= 1; i<=global.actions_quantity; i++){
		global.actions_type[i] = ini_read_string("actions_type",string(global.actions_quiantity),"none")
	
	}
	for(var i= 1; i<=global.actions_quantity; i++){
		global.actions_name[i] = ini_read_string("actions_name",string(global.actions_quiantity),"none")
	
	}
	for(var i= 1; i<=global.actions_quantity; i++){
		global.actions_time[i] = ini_read_string("actions_time",string(global.actions_quiantity),"none")
	
	}
	
	ini_close();
	
	
}