/// @description Inserir descrição aqui
var _wdw_h = window_get_width()/2;
draw_set_font(fnt_pontos);
draw_set_halign(1);
draw_set_valign(1);
draw_text(_wdw_h, 30, global.pontos);
draw_set_font(-1);
draw_set_halign(-1);
draw_set_valign(-1);