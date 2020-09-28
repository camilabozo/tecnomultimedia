void botonesPantalla1(int pantallaComenzar,int pantallaCreditos){
  if((mouseX >= porcentajeX(171) && mouseX <= porcentajeX(341)) && (mouseY >= porcentajeY(397) && mouseY <= porcentajeY(453))){
    pantallaActual = pantallaComenzar;
  }else if((mouseX >= porcentajeX(452) && mouseX <= porcentajeX(622)) && (mouseY >= porcentajeY(397) && mouseY <= porcentajeY(453))){ 
    pantallaActual = pantallaCreditos;
  }
}

void dosBotones(int opcion1, int opcion2){
  if(pantallaActual == 1){
    botonesPantalla1(opcion1, opcion2);
  }else{
    if((mouseX >= porcentajeX(410) && mouseX <= porcentajeX(585)) && (mouseY >= porcentajeY(502) && mouseY <= porcentajeY(559))){
      pantallaActual = opcion1;
    }else if((mouseX >= porcentajeX(586) && mouseX <= porcentajeX(756)) && (mouseY >= porcentajeY(502) && mouseY <= porcentajeY(559))){
      if(pantallaActual == 8){
        exit();
      }else{
        pantallaActual = opcion2;
      }
    }
  }
}

void unBoton(int pantallaSiguiente){
  if(mouseX >= porcentajeX(586) && mouseX <= porcentajeX(756) && mouseY >= porcentajeY(502) && mouseY <= porcentajeY(559)){
    if(pantallaActual == 0){
      posY = 700;
    }
    pantallaActual = pantallaSiguiente;
  }
}
