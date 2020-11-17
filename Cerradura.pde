class Cerradura{
  int ancho;
  int alto;
  int posX;
  int posY;
  PImage imagen;
  String sentido;
  int velocidad;
  Resize resize;
  
  Cerradura(){
    this.resize = new Resize();
    this.ancho = 75;
    this.alto = 125;
    this.posX = width/2;
    this.posY = 125; 
    this.imagen = loadImage("Juego/Cerradura.png");
    this.sentido = "I";
    this.velocidad = 5;
  }
  
  void dibujate(){
    imageMode(CENTER);
    image(this.imagen, this.resize.porcentajeX(this.posX), this.resize.porcentajeY(this.posY), this.resize.porcentajeX(this.ancho), this.resize.porcentajeY(this.alto));
  }
  
  void moverDerecha(){
    this.posX = this.posX + velocidad;
  }
  
  void moverIzquierda(){
    this.posX = this.posX - velocidad;
  }
  
  void mover(){
    if(this.sentido == "D"){
      this.moverDerecha();
    }
    if(this.sentido == "I"){
      this.moverIzquierda();
    }
    if(this.resize.porcentajeX(this.posX) <= this.resize.porcentajeX(this.ancho/2)){
      this.sentido = "D";
    }
    if(this.resize.porcentajeX(this.posX) >= width - this.resize.porcentajeX(this.ancho/2)){
      this.sentido = "I";
    }
  }  
}
