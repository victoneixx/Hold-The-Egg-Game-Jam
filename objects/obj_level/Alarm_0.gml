/// @description Tempo jogar outro objeto ovo
alarm[0]  = time;											//Rodando o alarme de novo

if(global.game_over || global.start_game){exit}				//Se uma das duas variavel global for verdadeira, sair desse evento

var _rdm_x = random_range(38, 218);							//Pegando uma posição x aleatoriamente
instance_create_layer(_rdm_x, -10, layer, obj_egg);			//Criando o objeto ovo