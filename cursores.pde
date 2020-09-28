void chequearCursor(){
  if(esPantallaDeUnBoton(pantallaActual)){
    cursorEnUnBoton();
  }else{
    if(pantallaActual == 1){
      cursorEnDosBotones(171, 341, 397, 453, 452, 622);
    }else{
      cursorEnDosBotones(410, 585, 502, 559, 586, 756);
    }
  }
}

void cursorEnDosBotones(int mayorEnXboton1, int menorEnXboton1, int mayorEnYboton1y2, int menorEnYboton1y2, int mayorEnXboton2, int menorEnXboton2){
  if((mouseX >= porcentajeX(mayorEnXboton1) && mouseX <= porcentajeX(menorEnXboton1) && mouseY >= porcentajeY(mayorEnYboton1y2) && mouseY <= porcentajeY(menorEnYboton1y2)) 
  || (mouseX >= porcentajeX(mayorEnXboton2) && mouseX <= porcentajeX(menorEnXboton2) && mouseY >= porcentajeY(mayorEnYboton1y2) && mouseY <= porcentajeY(menorEnYboton1y2))){
    cursor(HAND);
  }else{
    cursor(ARROW);
  }
}

void cursorEnUnBoton(){
  if(mouseX >= porcentajeX(586) && mouseX <= porcentajeX(756) && mouseY >= porcentajeY(502) && mouseY <= porcentajeY(559)){
    cursor(HAND);
  }else{
    cursor(ARROW);
  } 
}
