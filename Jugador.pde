class Jugador{
  Mano mano;
  Llave llave;
  int velocidad;
  String sentido;
  boolean disparo;
  
  Jugador(){
    this.mano = new Mano();
    this.llave = new Llave();
    this.velocidad = 3;
    this.sentido = "D";
    this.disparo = false;
  }

  void dibujate(){
    imageMode(CENTER);
    background(255);
    llave.dibujate();
    mano.dibujate();
  }
  
  void moverDerecha(){
    this.mano.moverDerecha(this.velocidad);
    this.llave.moverDerecha(this.velocidad);
  }
  
  void moverIzquierda(){
    this.mano.moverIzquierda(this.velocidad);
    this.llave.moverIzquierda(this.velocidad);
  }
  
  void mover(){
    if(this.sentido == "D"){
      this.moverDerecha();
    }
    if(this.sentido == "I"){
      this.moverIzquierda();
    }
    if(this.mano.posX <= this.mano.ancho/2 && this.llave.posX <= this.llave.ancho/2){
      this.sentido = "D";
    }
    if(this.mano.posX >= width - this.mano.ancho/2 && this.llave.posX >= width - this.llave.ancho/2){
      this.sentido = "I";
    }
  }
 
  void lanzarLlave(){
    this.mano.abrir();
    this.llave.avanzar();
  }
}
