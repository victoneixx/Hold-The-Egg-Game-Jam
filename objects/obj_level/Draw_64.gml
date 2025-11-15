/// @description Desenhado os pontos e tempo do jogador

//Pegando o tamanho da janela do jogo
var _wdw_w = window_get_width()/2;
var _wdw_h = window_get_height();

//Faalando qual fonte deve ser usada
draw_set_font(fnt_pontos);

//Se a variavel global for verdadeira, sair desse evento
if(global.game_over){
	//Alinhando o texto na horizontal e vertical
	draw_set_halign(1);
	draw_set_valign(1);
	//Desenhar um texto falando que o jogo acabou
	draw_text(_wdw_w, _wdw_h/2, "Game Over");
	//E mostrando a melhor pontuação que o jogador fez
	draw_text(_wdw_w, _wdw_h/2 + 40, "Best Score: " + string(global.best_score));
	//Desenhando os ovos que o jador deixo quebrar
	draw_text(_wdw_w, _wdw_h/2 + 80, "Eggs that broke: " + string(global.broken_eggs));
	//Removendo o aliamento do texto
	draw_set_halign(-1);
	draw_set_valign(-1);
	exit
}

//Desenhando o tempo do jogo
draw_text(2, 2, string(global.seconds) + ":" + string(global.millisecond));

//Alinhando o texto na vertical
draw_set_valign(1);
//Desenhando a melhor pontuação do jogador
draw_text(4, _wdw_h, "Best Score: " + string(global.best_score));
draw_set_valign(-1);

//Alinhando o texto na horizontal e vertical
draw_set_halign(1);
draw_set_valign(1);
//Desenhando a pontuação atual do jogador 
draw_text(_wdw_w, 30, global.points);

//Removendo o aliamento de fonto do jogo
draw_set_font(-1);
draw_set_halign(-1);
draw_set_valign(-1);

