/// @function getResponse()
/// @description Obtiene el valor de la respuesta del ejercicio y la modifica acorde a lo que se requiera. Debe ser editada.
function formResponse() {
	if (variable_global_exists("response")) {
		return global.response;
	} else {
		return "Sin Respuesta";	
	}



}
