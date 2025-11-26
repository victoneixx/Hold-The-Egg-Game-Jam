/// @description Sistema de dsilocamento dos pineis

//Se global game over for true
if(global.game_over){
	path_x = lerp(path_x, 127, 0.1);	//Iniciar o lerp até o ponto X em 10%
	path_y = lerp(path_y, 191, 0.1);	//Iniciar o lerp até o ponto Y em 10%
} else{									//Se global game over for false
	path_x = 127;						//Voltar para o ponto inicial do X
	path_y = -66;						//Voltar para o ponto inicial do Y
}

//Se global start game for verdadeira
if(global.start_game){
	alpha = 1;							//Variavel alpha vai ser igual a um
} else{									//Se variavvel global for false
	alpha = lerp(alpha, 0, 0.2);		//Iniciar o lerp ate cheguar no valor zero em 20%
}
