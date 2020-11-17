class Juego{
  Cerradura cerradura;
  Contador contador;
  Jugador jugador;
  Boton botonDisparar;
  boolean activo;
  boolean fin;
  PImage fondo;
  
  Juego(){
    this.fondo = loadImage("Juego/horno.png");
    this.jugador = new Jugador();
    this.cerradura = new Cerradura();
    this.contador = new Contador();
    this.activo = false;
    this.fin = false;
    this.cargarBoton();
  }
  
  void dibujate(){
    imageMode(CORNER);
    image(this.fondo, 0, 0, width, height);
    jugador.dibujate();
    cerradura.dibujate();
    contador.dibujate();
    botonDisparar.dibujate();
  }
  
  void cargarBoton(){
    String fuenteBotones = "BodoniMTCondensed-Italic-48.vlw";
    int tamanioTexto = 40;
    Texto dispara = new Texto(fuenteBotones, "Dispara!", tamanioTexto, 585, height/2, 175, 65);
    this.botonDisparar = new Boton(dispara, -1, 27);  
  }
  
  void jugar(){
    if(!fin){                                                                    //Si el juego NO finalizó
      this.dibujate();                                                           //Se dibuja
      this.cerradura.mover();                                                    //La cerradura se mueve
      if(!this.jugador.disparo){                                                 //Si el jugador NO disparó  
         this.jugador.mover();                                                   //El jugador se mueve
      }else{                                                                     //Sino
        this.jugador.lanzarLlave();                                              //El jugador lanza la llave
        if(this.victoria()){                                                     //Si victoria
          this.fin = true;                                                       //El juego finaliza
        }else if(this.jugador.llave.posY + this.jugador.llave.alto/2 <= 0){      //Sino si la llave supera la parte de arriba de la pantalla
          this.contador.decrementar();                                           //El contador decrementa
          this.reubicar();                                                       //La llave se reubica en la mano
        }
        if(this.contador.intentosRestantes == 0){                                //Si el contador llega a 0
          this.fin = true;                                                       //El juego finaliza
        }       
      }  
    }else{
      this.finalizar();                                                          
    }
  }
  
  void finalizar(){
    this.activo = false;
    int pantallaAIr;
    if(this.contador.intentosRestantes == 0){
      pantallaAIr = 13;  
    }else{
      pantallaAIr = 14;
    }
    aventura.pantallaActual = aventura.pantallas[pantallaAIr];
    this.resetear();
  }
  
  boolean victoria(){
    if(dist(this.cerradura.posX, this.cerradura.posY, this.jugador.llave.posX, this.jugador.llave.posY) <= this.cerradura.alto/2){
      return true;
    }else{
      return false;
    }
  }
  
  void reubicar(){                      //Reubica todos los objetos si el jugador pierde un intento
    this.jugador.llave.reubicar();
    this.jugador.mano.cerrar();
    this.jugador.disparo = false;
  }
  
  void resetear(){                         //Resetea el juego
    this.reubicar();
    this.contador.intentosRestantes = 3;
    this.fin = false;
  }
  
  void cambiarVelocidad(int velocidad){
    this.jugador.velocidad = velocidad;
    this.cerradura.velocidad = velocidad;
  }
  
  void mouseClicked(){
    if(this.botonDisparar.presionado()){
      this.jugador.disparo = true;
    }
  }
}
