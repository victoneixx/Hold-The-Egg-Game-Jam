/// @description Controles e sistemas de velocidade do jogador

//Se a variavel global for verdadeira, sair desse evento
if(global.time_over){exit}

//Controles do player
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
