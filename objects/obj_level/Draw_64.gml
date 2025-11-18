/// @description Desenhado os pontos e tempo do jogador

//Pegando o tamanho da janela do jogo
var _wdw_w = window_get_width()/2;
var _wdw_h = window_get_height();
var _score = font_add_sprite_ext(spr_score_num, "0123456789", 0, 1);
var _time = font_add_sprite_ext(spr_time_num, "0123456789", 0, 1);
var _best_score = font_add_sprite_ext(spr_best_score_num, "0123456789", 0, 1);

draw_set_font(_time);																//Falando qual fonte deve ser usada
draw_sprite_ext(spr_time_txt, 0, 4, 6, 2, 2, 0, c_white, 1);
draw_text(33.04*4, 6, seconds);															//Desenhando o tempo do jogo


//Alinhando o texto na horizontal e vertical
draw_set_font(-1);																	//Removendo a fonte
draw_set_font(_score);																//Colocando uma nova fonte
draw_set_halign(1);
draw_set_valign(1);

if(global.start_game){draw_text(_wdw_w, _wdw_h/2, "Press space key to begin")}		//Se variavel global for false, mostra texto
draw_text(_wdw_w, 30*3, global.score);												//Desenhando a pontuação atual do jogador 
draw_set_font(-1);

draw_set_font(_best_score);
if(global.game_over){
	var _margen_y = 68;	
	draw_sprite_ext(spr_gameover_txt, 0, _wdw_w, _wdw_h/2, 4, 4, 0, c_white, 1);
	draw_sprite_ext(spr_best_score_txt, 0, _wdw_w, _wdw_h/2 + _margen_y, 2, 2, 0, c_white, 1);
	draw_text(_wdw_w * 1.46, _wdw_h/2 + _margen_y, global.best_score);
}

//Removendo o aliamento de fonto do jogo
draw_set_font(-1);
draw_set_halign(-1);
draw_set_valign(-1);