void cargarImagenes(){
  for(int i=0; i<imagenes.length; i++){
    imagenes[i] = loadImage("pantalla" + i + ".jpg");
  }
}

void cambioDePantallas(){
  if(esPantalla(0)){
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
  }
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
