/// @description Colisão do ovo com o chão

//Se o ovo colidir com o chão
//Adicionar mais um de no ovos qurbrados
global.broken_eggs++;
//E destruir o ovo
instance_destroy();
//Tocando o efeito sonoro do ovo quebrando
audio_play_sound(snd_broken_egg, 0, 0);