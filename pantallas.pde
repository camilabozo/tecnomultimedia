void cargarImagenes(){
  for(int i=0; i<imagenes.length; i++){
    imagenes[i] = loadImage("pantalla" + i + ".jpg");
  }
}

void cambioDePantallas(){
  switch (pantallaActual){
    case 0: 
      unBoton(1);
      posY = 700;
      break;
    case 1:
      botonesPantalla1(2,0);
      break;
    case 2:
      unBoton(3);
      break;
    case 3:
      unBoton(4);
      break;
    case 4:
      unBoton(5);
      break;
    case 5:
      dosBotones(6, 7);
      break;
    case 6:
      dosBotones(10, 7);
      break;
    case 7:
      unBoton(8);
      break;
    case 8:
      dosBotones(1, -1);
      break;
    case 9:
      unBoton(1);
      break;
    case 10:
      dosBotones(11, 12);
      break;
    case 11:
      unBoton(8);
      break;
    case 12:
      dosBotones(13, 14);
      break;
    case 13:
      dosBotones(15, 14);
      break;
    case 14:
      unBoton(8);
      break;
    case 15:
      dosBotones(17, 16);
      break;
    case 16:
      unBoton(8);
      break;
    case 17:
      dosBotones(18, 16);
      break;
    case 18:
      unBoton(9);
      break;
  }
/*  if(esPantalla(0)){
    unBoton(1);
    posY = 700;
  }else if(esPantalla(1)){
    botonesPantalla1(2,0);
  }else if(esPantalla(2)){
    unBoton(3);
  }else if(esPantalla(3)){
    unBoton(4);
  }else if(esPantalla(4)){
    unBoton(5);
  }else if(esPantalla(5)){
    dosBotones(6, 7);
  }else if(esPantalla(6)){
    dosBotones(10, 7);
  }else if(esPantalla(7)){
    unBoton(8);
  }else if(esPantalla(8)){
    dosBotones(1, -1);
  }else if(esPantalla(9)){
    unBoton(1);
  }else if(esPantalla(10)){
    dosBotones(11, 12);
  }else if(esPantalla(11)){
    unBoton(8);
  }else if(esPantalla(12)){
    dosBotones(13, 14);
  }else if(esPantalla(13)){
    dosBotones(15, 14);
  }else if(esPantalla(14)){
    unBoton(8);
  }else if(esPantalla(15)){
    dosBotones(17, 16);
  }else if(esPantalla(16)){
    unBoton(8);
  }else if(esPantalla(17)){
    dosBotones(18, 16);
  }else if(esPantalla(18)){
    unBoton(9);
  }*/


  /*  for(int i = 0; i<pantallas.length; i++){
   if(pantallaActual == i){
     if(pantallas[pantallaActual][1] == -1){
        println(pantallaActual);
       unBoton(pantallas[pantallaActual][0]);
     }else{ 
       dosBotones(pantallas[pantallaActual][0], pantallas[pantallaActual][1]);
     }
     i = 20;
   }
  }*/
}

boolean esPantallaDeUnBoton(int pantalla){
  for(int i = 0; i<pantallasDeUnBoton.length; i++){
    if(pantallasDeUnBoton[i] == pantalla){
      return true; 
    }
  }
  return false;
}


boolean esPantalla(int pantalla){
  if(pantallaActual == pantalla){
    return true;
  }else{
    return false;
  }
}

/*void cargarPantallas(){ //-1 se utiliza para pantallas con 1 solo boton. No dirige a ninguna pantalla.
  pantallas[0][0] = 1;  //-2 se utiliza para cerrar el programa
  pantallas[0][1] = -1;
  pantallas[1][0] = 2;
  pantallas[1][1] = 0;
  pantallas[2][0] = 3;
  pantallas[2][1] = -1;
  pantallas[3][0] = 4;
  pantallas[3][1] = -1;
  pantallas[4][0] = 5;
  pantallas[4][1] = -1;
  pantallas[5][0] = 6;
  pantallas[5][1] = 7;
  pantallas[6][0] = 10;
  pantallas[6][1] = 7;
  pantallas[7][0] = 8;
  pantallas[7][1] = -1;
  pantallas[8][0] = 1;
  pantallas[8][1] = -2; 
  pantallas[9][0] = 1;
  pantallas[9][1] = -1;
  pantallas[10][0] = 11;
  pantallas[10][1] = 12;
  pantallas[11][0] = 8;
  pantallas[11][1] = -1;
  pantallas[12][0] = 13;
  pantallas[12][1] = 14;
  pantallas[13][0] = 15;
  pantallas[13][1] = 14;
  pantallas[14][0] = 8;
  pantallas[14][1] = -1;
  pantallas[15][0] = 17;
  pantallas[15][1] = 16;
  pantallas[16][0] = 8;
  pantallas[16][1] = -1;
  pantallas[17][0] = 18;
  pantallas[17][1] = 16;
  pantallas[18][0] = 9;
  pantallas[18][1] = -1;
}
*/
