/// @description Inserir descrição aqui



//Se a variavel global for verdadeira, sair desse evento
if(global.time_over){exit}

//Adicionando a gravidade do ovo
vspeed += grave;
vspeed = clamp(vspeed, 0, 12);

