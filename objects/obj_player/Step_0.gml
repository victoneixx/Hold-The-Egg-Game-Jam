var _right = keyboard_check(ord("D"));
var _left = keyboard_check(ord("A"));

hspd = (_right - _left)*spd;

if(place_meeting(x+hspd, y, obj_wall)){
	while(!place_meeting(x+sign(hspd), y, obj_wall)){
		x += sign(hspd);
	}
	hspd = 0;
}
x += hspd;