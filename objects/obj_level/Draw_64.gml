/// @description Desenhado os pontos e tempo do jogador

//Pegando o tamanho da janela do jogo
var _wdw_w = window_get_width()/2;
//var _wdw_h = window_get_height();
var _score = font_add_sprite_ext(spr_score_num, "0123456789", 0, 0);
var _time = font_add_sprite_ext(spr_time_num, "0123456789", 0, 0);

draw_set_font(_time);																//Falando qual fonte deve ser usada
draw_sprite_ext(spr_time_txt, 0, 4, 6, 2, 2, 0, c_white, 1);
draw_text(33.04*4, 6, seconds);															//Desenhando o tempo do jogo


//Alinhando o texto na horizontal e vertical
draw_set_font(-1);																	//Removendo a fonte
draw_set_font(_score);																//Colocando uma nova fonte
draw_set_halign(1);
draw_set_valign(1);

draw_text(_wdw_w, 30*3, global.score);												//Desenhando a pontuação atual do jogador 
draw_set_font(-1);

//Removendo o aliamento de fonto do jogo
draw_set_font(-1);
draw_set_halign(-1);
draw_set_valign(-1);