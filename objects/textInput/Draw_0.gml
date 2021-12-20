/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
draw_self();
draw_set_font(fuente_gui2)
draw_set_valign(fa_middle);
if (global.active_input == id_input) draw_text(x+30, y+35, Text + cursor); else draw_text(x+30, y+35, Text);