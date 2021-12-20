// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function scr_alert_add(){
	for (i=0;i<maxmsges;i+=1)
	    if global.messagesbox[i]= false
	    {
	        global.messagesbox[i]=true;
	        global.alert_word[i] = msg[argument0] // show which message will show from scr_word
	        i = maxmsges
	    }
}