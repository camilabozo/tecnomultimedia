class Juego{
  Jugador jugador;
  Enemigo [] enemigos;
  Techo techo;
  Contador contador;
  int cantidadDeEnemigos;
  int velocidad;
  
  Juego(){
    this.cantidadDeEnemigos = 10;
    this.jugador = new Jugador(colorJugador, width/2, 360, tam, tam);
    this.contador = new Contador(50, 50, colorTexto, 20);
    this.techo = new Techo();
    this.velocidad = 1;
    this.enemigos = new Enemigo[cantidadDeEnemigos];
    for(int i = 0; i < cantidadDeEnemigos; i++){
      this.enemigos[i] = new Enemigo(i*tam+tam/2);
    }
  }  
  
  void dibujate(){
    for(int i = 0; i < cantidadDeEnemigos; i++){
      this.enemigos[i].dibujate();
    }
    jugador.dibujate();
    techo.dibujate();
    contador.dibujate();
  }
  
  void inicializarEnemigos(){
    for(int i = 0; i < this.enemigos.length; i++){  
      this.enemigos[i].setPosY(this.generarPosicionAleatoria());         //se inicializa la posición en Y de los enemigos de forma aleatoria
    }
  }
  void aJugar(){
    this.dibujate();
    for(int i = 0; i < this.cantidadDeEnemigos; i++){
      this.enemigos[i].descender(this.velocidad);                  //las ellipses descienden segun la velocidad del juego
      if(this.enemigos[i].getPosY() >= height){                    //si la posición en Y de la ellipse llega al final de la pantalla
        this.enemigos[i].setPosY(this.generarPosicionAleatoria());      //se genera una nueva posición aleatoria para la ellipse
        this.techo.aplastarJugador();                              //el techo se incrementa en 1
      }
      if(dist(i*tam + tam/2, this.enemigos[i].getPosY(), this.jugador.posX + tam/2, width-tam + tam/2) < tam/2){ //si el jugador agarra la ellipse
        this.enemigos[i].setPosY(this.generarPosicionAleatoria());      //se genera una nueva posición aleatoria para la ellipse
        this.contador.incrementarse();                             //el contador se incrementa cada vez que se atrapa a un enemigo
    
        if(this.contador.cantidadDeEllipsesAtrapadas % 10 == 0){   //cuando el contador llega a 10/20/30 etc...        
          this.aumentarVelocidad();                                //la velocidad se incrementa en 1
        }
      }
    }  
  }
  
  void aumentarVelocidad(){
    this.velocidad++;
  }
  
  int generarPosicionAleatoria(){
    return round(random(-1000, this.techo.alto * tam));
  }
}
