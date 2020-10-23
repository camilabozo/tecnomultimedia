class Juego{
  Cerradura cerradura;
  Contador contador;
  Jugador jugador;
  Boton botonDisparar;
  Boton botonReintentar;
  boolean fin;
  
  Juego(){
    this.jugador = new Jugador();
    this.cerradura = new Cerradura();
    this.contador = new Contador();
    this.botonDisparar = new Boton("DISPARA!", width - 150, 50);
    this.botonReintentar = new Boton("REINTENTAR", width/2, height/2 + 40);
    this.fin = false;
  }
  
  void dibujate(){
    background(255);
    jugador.dibujate();
    cerradura.dibujate();
    contador.dibujate();
    botonDisparar.dibujate();
  }
  
  void cambiarVelocidad(int velocidad){
    this.jugador.velocidad = velocidad;
    this.cerradura.velocidad = velocidad;
  }
  
  void jugar(){
    if(!fin){
      this.dibujate();
      this.cerradura.mover();
      if(!this.jugador.disparo){
         this.jugador.mover();
      }else{
        this.jugador.lanzarLlave();
        if(this.victoria()){
          this.ganaste();
        }else if(this.jugador.llave.posY + this.jugador.llave.alto/2 <= 0){
          this.contador.decrementar();
          this.reintentar();
        }
        if(this.contador.intentosRestantes == 0){
          this.perdiste();
          this.jugador.disparo = false;
        }
        
      }  
    }
  }
  
  void reintentar(){
    this.jugador.llave.reubicar();
    this.jugador.mano.cerrar();
    this.jugador.disparo = false;
  }
  
  boolean victoria(){
    if(dist(this.cerradura.posX, this.cerradura.posY, this.jugador.llave.posX, this.jugador.llave.posY) <= this.cerradura.alto/2){
      return true;
    }else{
      return false;
    }
  }
  
  void perdiste(){
    background(0);
    textAlign(CENTER);
    textSize(30);
    fill(255, 0, 0);
    text("¡PERDISTE!", width/2, height/2);
    this.botonReintentar.dibujate();
    this.fin = true;
  }
  void ganaste(){
    background(255);
    textAlign(CENTER);
    textSize(30);
    text("¡GANASTE!", width/2, height/2);
    this.botonReintentar.dibujate();
    this.fin = true;
  }
}
