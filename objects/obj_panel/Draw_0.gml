/// @description Inserir descrição aqui

var _best_score = font_add_sprite_ext(spr_best_score_num, "0123456789", 0, 0);		//Fonte do best score
var _margin_y = 34;																	//Margin Y do best score

//Aplicando a fonte & alinhamente Horizontal e Vertical
draw_set_font(_best_score);
draw_set_halign(1);
draw_set_valign(1);

//Se global game over for true
if(global.game_over){
	draw_sprite_ext(spr_gameover_txt, 0, path_x, path_y, 1.8, 1.8, 0, c_white, 1);					//Desenhar o pinel game over
	draw_sprite_ext(spr_best_score_txt, 0, path_x - 18, path_y + _margin_y, 1, 1, 0, c_white, 1);	//Desenhar o painel best score
	draw_text(path_x + 78, path_y + _margin_y, global.best_score);									//Desenhar os pontos
}

draw_sprite_ext(spr_satrt_game_txt, 0, 127, 191, 0.8, 0.8, 0, c_white, alpha);						//Desenhando o pinel start game


//Removendo a fonte e o aliamento
draw_set_font(-1);
draw_set_halign(-1);
draw_set_valign(-1);