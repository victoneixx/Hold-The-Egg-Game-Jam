/// @description Tempo jogar outro objeto ovo

//Se a variavel global for verdadeira, sair desse evento
if(global.game_over){exit}

//Alarme para jogar os ovos
var _rdm_x = random_range(38, 218);
instance_create_layer(_rdm_x, -10, layer, obj_egg);
alarm = time;