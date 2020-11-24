class Jugador{
  Mano mano;
  Llave llave;
  int velocidad;
  String sentido;
  boolean disparo;
  Resize resize;
  
  Jugador(){
    this.resize = new Resize();
    this.mano = new Mano();
    this.llave = new Llave();
    this.velocidad = 3;
    this.sentido = "D";
    this.disparo = false;
  }

  void dibujate(){
    this.llave.dibujate();
    this.mano.dibujate();
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
    if(this.resize.porcentajeX(this.mano.posX) <= this.resize.porcentajeX(this.mano.ancho/2) && this.resize.porcentajeX(this.llave.posX) <= this.resize.porcentajeX(this.llave.ancho/2)){
      this.sentido = "D";
    }
    if(this.resize.porcentajeX(this.mano.posX) >= width - this.resize.porcentajeX(this.mano.ancho/2) && this.resize.porcentajeX(this.llave.posX) >= width - this.resize.porcentajeX(this.llave.ancho/2)){
      this.sentido = "I";
    }
  }
 
  void lanzarLlave(){
    this.mano.abrir();
    this.llave.avanzar();
  }
   
  void reubicar(){                      //Reubica todos los objetos si el jugador pierde un intento
    this.llave.reubicar();
    this.mano.cerrar();
    this.disparo = false;
  }
}
