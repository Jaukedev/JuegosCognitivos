
/// @description Insert description here
// You can write your code in this editor
show_debug_message("Load Start");
random_set_seed(date_current_datetime());
randomize();
global.username = "randomUser_" + string(irandom_range(0, 99));


scr_alert_word()    // database word
scr_alert_init() 






global.restart_next_end = false;	
// Relacionados a mecánicas de registro de eventos
global.sessionTime = 0;
global.sessionCP = 0;
global.experimentRound = 0;
global.savingObjectInstance = id;
global.timeStart = 0;
global.timeEnd = 0;
global.roundsPerLevel = 1;
global.enemigosIniciales = 0;
global.actualEntries = 0;
global.baseJsonStructure = -1;
global.conectado = false;
global.gameTitle = "";

// Relacionado a extras
global.tryValueList = [];

// Relacionados a mecánicas de registro de puntuación
global.highScore = 0;
global.values = undefined;
global.scoreCounter = 0;
global.exercise = "No exercise";
global.response = "No response";
global.userResponse = "No Response";
global.origin = "No origin";
global.description = "No description";
global.livesCounter = 0;


//Relacionados a registro de tabla juegos en db // creado el 23-02-2022
global.rutRegistro = "";
global.nombreRegistro = "";
global.nivelRegistro = 0;
global.cantidadIntentosRegistro = 0;
global.respuestaRegistro = "";
global.TdreaccionRegistro = 0;
global.eventtypeRegistro = "";
global.puntajeRegistro = 0;
global.extraRegistro = "";

global.urljuegosRegistro = "https://juegoscognitivos.cl/asdf/public_test/php/game-instances/data/juegos/save";


