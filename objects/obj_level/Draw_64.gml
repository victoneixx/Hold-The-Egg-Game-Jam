/// @description Desenhado os pontos e tempo do jogador

//Pegando o tamanho da janela do jogo
var _wdw_w = window_get_width()/2;
var _wdw_h = window_get_height();
draw_set_font(fnt_pontos);															//Falando qual fonte deve ser usada

//Se a variavel global for verdadeira, sair desse evento
if(global.game_over){
	//Alinhando o texto na horizontal e vertical
	draw_set_halign(1);
	draw_set_valign(1);
	draw_text(_wdw_w, _wdw_h/2, "Game Over");										//Desenhar um texto falando que o jogo acabou
	draw_text(_wdw_w, _wdw_h/2 + 80, "Score: " + string(global.score));				//Desenhando os pontos feito na quelap artida do jogo
	draw_text(_wdw_w, _wdw_h/2 + 40, "Best Score: " + string(global.best_score));	//Mostrando a melhor pontuação que o jogador fez
	//Removendo o aliamento do texto
	draw_set_halign(-1);
	draw_set_valign(-1);
	exit																			//Depois saindo desse evento
}

draw_text(2, 2, seconds);															//Desenhando o tempo do jogo

//Alinhando o texto na horizontal e vertical
draw_set_halign(1);
draw_set_valign(1);
if(global.start_game){draw_text(_wdw_w, _wdw_h/2, "Press space key to begin")}		//Se variavel global for false, mostra texto
draw_text(_wdw_w, 30, global.score);												//Desenhando a pontuação atual do jogador 
//Removendo o aliamento de fonto do jogo
draw_set_font(-1);
draw_set_halign(-1);
draw_set_valign(-1);

