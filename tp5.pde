Juego juego;

void setup(){
  size(800,600);
  juego = new Juego();
}

void draw(){
  juego.jugar();
}

void mouseClicked(){
  if(juego.botonDisparar.presionado()){
    juego.jugador.disparo = true;
  }
  if(juego.botonReintentar.presionado()){
    juego.fin = false;
    juego.contador.intentosRestantes = 3;
    juego.reintentar();
  }
}
