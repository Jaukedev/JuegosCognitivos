// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function scr_alert_init(){
	globalvar maxmsges;
	maxmsges = 10

	for (i = 0; i < maxmsges; i += 1)
	{   
	    global.messagesbox[i] = false //hold item or not
	    global.alert_word[i] = -1           //id to show which msg from scr_word. used in scr_alert_add
	    global.msgtime[i]=10          //set how long each message appear on screen
	}
}