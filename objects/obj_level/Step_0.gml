/// @description Inserir descrição aqui

//Se a variavel global for verdadeira, sair desse evento
if(global.time_over){exit}

if(global.points > global.best_score){
	global.best_score++;
}

global.millisecond--;

if(global.seconds <= 0 && global.millisecond <= 0){
	global.time_over = true;
}

if(global.millisecond <= 0){
	global.seconds -= 1;
	global.millisecond = 60;
}