// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function check_fecha_de_nacimiento(fecha_de_nacimiento){///la fecha de nacimiento debe estar en formato DD/MM/AAAA
	var simbolo= "/"
	var bandera_simbolo = false
	if (string_char_at(fecha_de_nacimiento,3)==simbolo && string_char_at(fecha_de_nacimiento,6)==simbolo){
		bandera_simbolo = true
	
	}
	return bandera_simbolo
}