/// @description Inserir descrição aqui
var _best_score = font_add_sprite_ext(spr_best_score_num, "0123456789", 0, 0);
draw_set_font(_best_score);
draw_self();
draw_set_halign(1);
draw_set_valign(1);
draw_text(x + 88, y, global.best_score);
draw_set_font(-1);
draw_set_halign(-1);
draw_set_valign(-1);