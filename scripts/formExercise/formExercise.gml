/// @function getExercise()
/// @description Obtiene el ejercicio a responder y lo modifica acorde a lo que se requiera. Debe ser editada.
function formExercise() {
	if (variable_global_exists("exercise")) {
		return global.exercise;
	} else {
		return "Sin Ejercicio";	
	}



}
