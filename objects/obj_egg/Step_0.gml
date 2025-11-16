/// @description Gravidade do ovo

//Se a variavel global for verdadeira
if(global.game_over){
	vspeed = 0;						//Vspeed vai ser igual azero
} else{// senão
	vspeed += 1.8;					//Vspeed mais igual a 1.8, gravidade do ovo
	vspeed = clamp(vspeed, 0, 12);	//Limitando a velocidade da gravidade do ovo
}

