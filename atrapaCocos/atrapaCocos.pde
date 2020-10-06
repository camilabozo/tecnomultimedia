color colorJugador = color(0, 0, 255);
color colorTexto = color(255, 0, 0);
color colorEnemigo = color(255, 0, 0);
int tam = 40;
Juego juego;


void setup(){
  size(400, 400);
  juego = new Juego();
  for(int i = 0; i < juego.enemigos.length; i++){
    juego.enemigos[i].setPosY(generarPosicionAleatoria());
  }
}

void draw(){
  background(200);
  juego.comenzar();
  
  for(int i = 0; i < juego.cantidadDeEnemigos; i++){
    juego.enemigos[i].descender(juego.velocidad);
    println(juego.enemigos[1].getPosY(), juego.techo.alto);
    if(juego.enemigos[i].getPosY() >= height){       //si la posición en Y de la ellipse llega al final de la pantalla
      juego.enemigos[i].setPosY(generarPosicionAleatoria());  //se genera una nueva posición aleatoria para la ellipse
      juego.techo.aplastarJugador();                         //el techo incrementa en 1
    }
    if(dist(i*tam + tam/2, juego.enemigos[i].getPosY(), juego.jugador.posX + tam/2, width-tam + tam/2) < tam/2){ //si el jugador agarra la ellipse
      juego.enemigos[i].setPosY(generarPosicionAleatoria());      //se genera una nueva posición aleatoria para la ellipse
      juego.contador.incrementarse();  
      
      if(juego.contador.cantidadDeEllipsesAtrapadas % 10 == 0){  //cuando el contador llega a 10/20/30 etc...              
        juego.aumentarVelocidad();           //la velocidad incrementa en 1
      }
    }
  }  
}

void keyPressed(){
  juego.jugador.moverIzq();
  juego.jugador.moverDcha();
}

int generarPosicionAleatoria(){
  return round(random(-1000, juego.techo.alto * tam));
}
