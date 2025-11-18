/// @description Controles e sistemas de velocidade do jogador

if(global.game_over || global.start_game){exit}	//Se uma das duas variavel global for verdadeira, sair desse evento

//Se controles for true
//você vai controlar pelo mouse
if(global.controls){
	//O x e igual a lerp, isso serve para controlar o jogar pelo mouse
	x = lerp(x, mouse_x, 0.8);
} else{	//Se não
	//Controlar usando wasd ou as setas
	//Controle do player pelo teclado
	var _right = keyboard_check(ord("D"));
	var _left = keyboard_check(ord("A"));

	//Adicionando a velocidade do player
	hspd = (_right - _left)*spd;

	//Sietam de colisão com a parede
	if(place_meeting(x+hspd, y, obj_wall)){
		while(!place_meeting(x+sign(hspd), y, obj_wall)){
			x += sign(hspd);
		}
		hspd = 0;
	}
	x += hspd;
}



