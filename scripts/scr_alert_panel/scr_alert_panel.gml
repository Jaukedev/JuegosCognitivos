// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function scr_alert_panel(){
	//scr_alert_panel()
	var _x,_y;
	_x = view_xview[0]+24   // to make the alert message can follow screen
	_y = view_yview[0]+24
	draw_set_font(fuente_alert)
	//draw alert panel
	index=0
	for (i=0; i<maxmsges; i+=1)
	{
	    if global.messagesbox[index] = true
	    {
	        draw_sprite(spr_items,1,_x,_y+(i*120))       //draw spr_items (image 1)
	        draw_text(_x+20,_y+(i*120)+50,global.alert_word[index]) //draw alert message
	    }
	    else if global.messagesbox[index] = false
	    {
	        draw_sprite(spr_items,0,_x,_y+(i*120))       //draw spr_item (image 0)
	    }
	    index += 1
	}

	// set the time limit for each appeared message
	index=0
	for (i=0;i<maxmsges;i+=1)
	{
	    if global.messagesbox[index] = true
	    {
	        global.msgtime[index]-=0.1
	        if global.msgtime[index] <=0
	        {
	            global.messagesbox[index]=false
	            global.alert_word[index] = -1
	            global.msgtime[index]=10
	        }
	    }
	    index +=1
	}
}