/// @description Colisão do ovo com o jogador

//Se a variavel global for verdadeira, sair desse evento
if(global.time_over){exit}

//Se o ovo colidir com o player
//Adicionar mais um de pontuação
global.points++;
//E destruir o ovo
instance_destroy();