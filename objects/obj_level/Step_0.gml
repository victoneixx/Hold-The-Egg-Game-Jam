/// @description Inserir descrição aqui

//Se a variavel global for verdadeira, sair desse evento
if(global.game_over){exit}

if(global.points > global.best_score){
	global.best_score++;
}

global.millisecond--;

if(global.seconds <= 0 && global.millisecond <= 0){
	global.game_over = true;
}

if(global.millisecond <= 0){
	global.seconds -= 1;
	global.millisecond = 60;
}

if(global.broken_eggs >= 3){
	global.game_over = true;
}