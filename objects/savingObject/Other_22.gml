/// @description Guardar Puntuación
// Pense en usar la variable score, pero descubri que esta solo por compatibilidad

if ((global.scoreCounter > global.highScore)) {
	global.highScore = global.scoreCounter;
	updateScore();
}