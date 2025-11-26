/// @description Inserir descrição aqui
var _best_score = font_add_sprite_ext(spr_best_score_num, "0123456789", 0, 0);
var _margin_y = 34;
draw_set_font(_best_score);
draw_set_halign(1);
draw_set_valign(1);

if(global.game_over){
	draw_sprite_ext(spr_gameover_txt, 0, path_x, path_y, 1.8, 1.8, 0, c_white, 1);
	draw_sprite_ext(spr_best_score_txt, 0, path_x - 18, path_y + _margin_y, 1, 1, 0, c_white, 1);
	draw_text(path_x + 78, path_y + _margin_y, global.best_score);
}

draw_sprite_ext(spr_satrt_game_txt, 0, 127, 191, 0.8, 0.8, 0, c_white, alpha);

draw_set_font(-1);
draw_set_halign(-1);
draw_set_valign(-1);