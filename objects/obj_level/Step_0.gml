/// @description Sistema de tempo e ovos quebrados

if(global.game_over || global.start_game){exit}								//Se uma das duas variavel global for verdadeira, sair desse evento

//Se variavel global ponto for maior que variavel global melhor ponntuação
if(global.points > global.best_score){
	global.best_score++;													//Adicionando mais um na variavel global
}

#region Tempo do jogo
global.millisecond--;									//Subitraindo menos um da variavel global milisegundos

//Se variavel global segundos for menor que zero
//Junto com milisegundos
if(global.seconds <= 0 && global.millisecond <= 0){
	global.game_over = true;							//Então variavel global gameover vai ser true
}

//Se variavel global milisegundos for menor que zero
if(global.millisecond <= 0){
	global.seconds -= 1;								//Subitrair menos um da variavel global segundos
	global.millisecond = 60;							//E variavel global milisegundo vai ser igual a 60
}

#endregion

//Se variavel global ovos quebrado for mairo ou igual a três
if(global.broken_eggs >= 3){
	global.game_over = true;												//Variavel global game over vai ser true
}
