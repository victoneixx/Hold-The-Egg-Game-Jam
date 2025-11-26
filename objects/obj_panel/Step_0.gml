/// @description Inserir descrição aqui
if(global.game_over){
	path_x = lerp(path_x, 127, 0.1);
	path_y = lerp(path_y, 191, 0.1);
} else{
	path_x = 127;
	path_y = -66;
}

if(global.start_game){
	alpha = 1;
} else{
	alpha = lerp(alpha, 0, 0.2);
}
