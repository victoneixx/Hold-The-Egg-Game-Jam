/// @description Gravidade do ovo

//Se a variavel global for verdadeira, sair desse evento
if(global.game_over){
	vspeed = 0;
} else{
	//Adicionando a gravidade do ovo
	vspeed += 1.8;
	vspeed = clamp(vspeed, 0, 12);
}

