/// @description Colisão do ovo com o chão
global.broken_eggs++;								//Se o objeto colidir com o chão, adicionar mais um na variavel global
instance_destroy();									//Destruindo o objeto quando ele colidir
audio_play_sound(snd_broken_egg, 0, 0);				//Tocando um efeito sonoro dele quebrando
instance_create_layer(x, y, "level", obj_deslike);	//Criando um objeto erro quando ele colidir