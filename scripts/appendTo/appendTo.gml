/// @function appendTo(event_to_add, _usr_response, end_status)
/// @param {integer}  event_to_add  Tipo de evento en el servidor. 1: Inicio de ronda/partida, 2: Evento/jugada de usuario, 3: Fin de ronda/partida, 4: Salida de sistema.
/// @param {string}  _usr_response  Valor de respuesta de usuario. Puede ser none
/// @param {boolean}  end_status  Determina el envió de información al servidor. True/False.
function appendTo(event_to_add, _usr_response, end_status) {
	var ex_array = ds_map_find_value(global.baseJsonStructure, "exercises");
	
	// global.sessionTime: valor creciente en la partida, utilizado para determinar el final de una sesión según el limite determinado en el experimento.
	if (event_to_add == 3 or event_to_add == 4) {
		var game_data_map = ds_map_find_value(global.baseJsonStructure, "game");
		ds_map_replace(game_data_map, "time_used", floor(global.sessionTime-global.sessionCP));
		global.sessionCP = global.sessionTime;
		ds_map_replace_map(global.baseJsonStructure, "game", game_data_map);	
	} 
	
	/*
		Ciclo de ingreso de evento regular. 
		experimentRound: conjunto de etapas actual.
		timeStart: tiempo de inicio del evento. Este debe ser fijado al comenzar un nuevo ejercicio o si el juego es continuo, despues de una respuesta de usuario.
		timeEnd: tiempo de fin del evento. Este es fijado automáticamente por los eventos de usuario del objeto savingObject 8, 9 y 11.
		livesCounter: variable global de vidas. De usar otro, cambiar.
		scoreCounter: variable global de puntuación. De usar otro, cambiar.
		actualEntry: variable asociada a los test. Es necesaria para consistencia con el servidor.
	*/
	var events_array = ds_map_create();
	ds_map_add(events_array, "event", event_to_add);
	ds_map_add(events_array, "round", global.experimentRound);
	ds_map_add(events_array, "timeStart", global.timeStart);
	ds_map_add(events_array, "timeEnd", global.timeEnd);
	ds_map_add(events_array, "lives", global.livesCounter);
	ds_map_add(events_array, "score", global.scoreCounter);
	
	
	/*
		Ciclo de ingreso de evento de respuesta.
		ex: representación como string de la pregunta al usuario. Editar formExercise para acomodar a las necesidades que tenga.
		res: representación como string de la respuesta esperada al ejercicio. Editar formResponse para acomodar a las necesidades que tenga.
		actualEntry: variable de test que indica el número de pregunta.
		origin: Origen de la pregunta, solo utilizado si el juego posee memoria.
		description: Tipo de pregunta. Utilizado en caso de que una forma de ejercicio pudiese tener distintos objetivos.
	*/
	if (event_to_add == 2) {
		var ex = formExercise();
		var res = formResponse(); 
		
		ds_map_add(events_array, "exercise", ex);
		ds_map_add(events_array, "response", res);
		ds_map_add(events_array, "userResponse", string(_usr_response));
	
		if (variable_global_exists("origin")) {
			ds_map_add(events_array, "origin", global.origin);
		} else {
			ds_map_add(events_array, "origin", "-");
		}
		if (variable_global_exists("description")) {
			ds_map_add(events_array, "question_type", global.description);
		} else {
			ds_map_add(events_array, "question_type", "-");
		}
		show_debug_message("asdasdas");
	}
	
	/* Variables extra: Dadas las caracteristicas de la bd, no es posible guardar todos los valores que necesite 
	   cada juego por separado. Ante ello, existe el campo "extras", que contiene un json. 
	   Al momento de generar un reporte, se hace disponible tanto datos basados en los campos generales 
	   como los datos de partida en bruto. Existen herramientas en excel para manipular celdas con json en ellas.
	   
	   Este espacio es modificable para las necesidades que surjan. Lo único importante es manejar la variable "extras"
	   como mapa, y que cualquier mapa o lista que se le incluya lo haga a través de las funciones ds_map_add_map 
	   o ds_map_add_list correspondientemente.
	   
	   En este ejemplo, "extras" contiene la distancia del enemigo al eliminarlo.
	*/
	if (variable_global_exists("tryValueList") and event_to_add == 2) {
		show_debug_message("Saving tries");
		show_debug_message(global.tryValueList);
		var extras = ds_map_create();
		var intentos = ds_map_create();
		for (var i = 0; i < array_length(global.tryValueList); i++) {
			ds_map_add(intentos, i+1, string(global.tryValueList[i]));
		}
		ds_map_add_map(extras, "intentos", intentos);
		ds_map_add_map(events_array, "extras", extras);
	}
	global.tryValueList = [];
	
	// Inclusión de evento al arreglo de eventos
	ex_array[| ds_list_size(ex_array)] = json_encode(events_array);
	global.actualEntries++;
	
	show_debug_message("asdasdas");
	show_debug_message("Appending done");
	// Envio de eventos a servidor.
	if (end_status == true) {
		show_debug_message("Save to Server");
		/* savingObject es un objeto persistente y único encargado de la comunicación con el servidor y el manejo del puntaje mayor.
		   event_user(10) se encarga de enviar los eventos registrados al servidor.
		*/
		with (savingObject) {
			event_user(10);	
		}
		global.actualEntries = 0;
	}
}
