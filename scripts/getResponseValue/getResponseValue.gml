/// @function getResponseValue()
/// @description Obtiene el valor de la respuesta del usuario y la modifica acorde a lo que se requiera. Debe ser editada.
function getResponseValue() {
	if (variable_global_exists("userResponse")) {
		return global.userResponse;
	} else {
		return "Sin Respuesta de usuario";	
	}



}
