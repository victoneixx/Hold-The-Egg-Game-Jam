/// @description Inserir descrição aqui



//Desenhando os pontos na tela do jogo
var _wdw_w = window_get_width()/2;
var _wdw_h = window_get_height();
draw_set_font(fnt_pontos);

//Se a variavel global for verdadeira, sair desse evento
//E desenhar um texto falando que o tempo acabou
if(global.time_over){
	draw_set_halign(1);
	draw_set_valign(1);
	draw_text(_wdw_w, _wdw_h/2, "TIME IS OVER");
	draw_text(_wdw_w, _wdw_h/2 + 40, "Melhor Pontuação: " + string(global.best_score));
	draw_set_halign(-1);
	draw_set_valign(-1);
	exit
}

draw_text(2, 2, string(global.seconds) + ":" + string(global.millisecond));

draw_set_valign(1);
draw_text(4, _wdw_h, "Melhor Pontuação: " + string(global.best_score));
draw_set_valign(-1);

draw_set_halign(1);
draw_set_valign(1);
draw_text(_wdw_w, 30, global.points);
draw_set_font(-1);
draw_set_halign(-1);
draw_set_valign(-1);

