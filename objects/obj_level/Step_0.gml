/// @description Sistema de tempo e ovos quebrados

if(keyboard_check_pressed(vk_escape)){game_end()}

if(global.game_over || global.start_game){exit}								//Se uma das duas variavel global for verdadeira, sair desse evento

//Se variavel global ponto for maior que variavel global melhor ponntuação
if(global.score > global.best_score){
	global.best_score++;													//Adicionando mais um na variavel global
}

#region Tempo do jogo
mil--;													//Subitraindo menos um da variavel milisegundos

//Se variavel global segundos for menor que zero
//Junto com milisegundos
if(sec <= 0 && mil <= 0){
	global.game_over = true;							//Então variavel gameover vai ser true
}

//Se variavel global milisegundos for menor que zero
if(mil <= 0){
	sec -= 1;											//Subitrair menos um da variavel segundos
	mil = 60;											//E variavel milisegundo vai ser igual a 60
}

#endregion

//Se variavel global ovos quebrado for mairo ou igual a seis
if(global.broken_eggs >= 6){
	global.game_over = true;												//Variavel global game over vai ser true
}

if(global.game_over && instance_exists(obj_egg)){
	instance_destroy(obj_egg);
}

