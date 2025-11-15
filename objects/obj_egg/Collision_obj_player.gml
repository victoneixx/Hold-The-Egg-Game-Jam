/// @description Colisão do ovo com o jogador

//Se uma das duas variavel globais for verdadeira, sair desse evento
if(global.game_over){exit}

//Se o ovo colidir com o player
//Adicionar mais um de pontuação
global.points++;
//E destruir o ovo
instance_destroy();
//Tocando o efeito sonoro de pegando o ovo
audio_play_sound(snd_caught_egg, 0, 0);
//Quando o ovo colidir com o player, criar o objeto grenn
instance_create_layer(x, y, layer, obj_grenn);