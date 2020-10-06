color colorJugador = color(0, 0, 255);
color colorTexto = color(255, 0, 0);
color colorEnemigo = color(255, 0, 0);
int tam = 40;
Juego juego;


void setup(){
  size(400, 400);
  juego = new Juego();
  juego.inicializarEnemigos();
}

void draw(){
  background(200);
  juego.aJugar();
}

void keyPressed(){
  if(keyCode == LEFT){  //si se presiona la tecla izquierda, el jugador se moverá hacia la izquierda
    juego.jugador.moverIzq();
  }
  if(keyCode == RIGHT){ //si se presiona la tecla derecha, el jugador se moverá hacia la derecha
    juego.jugador.moverDcha();
  }
}

int generarPosicionAleatoria(){
  return round(random(-1000, juego.techo.alto * tam));
}
