/// @description Colisão do ovo com o jogador
if(global.game_over){exit}							//Se uma das duas variavel globais for verdadeira, sair desse evento
global.score++;										//Quando o ovjeto colidr com o player, adicionando mais um na variavel global
instance_destroy();									//Destruindo o objeto quando ele colidr com o player
audio_play_sound(snd_caught_egg, 0, 0);				//Tocando um efeito sonoro quando ele colidir com o player
instance_create_layer(x, y, "level", obj_like);		//Quando o ovo colidir com o player, criar o objeto grenn