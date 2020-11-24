class Llave{
  int ancho;
  int alto;
  float posX;
  float posY;
  PImage imagen;
  Resize resize;
  
  Llave(){
    this.resize = new Resize();
    this.ancho = 50;
    this.alto = 100;
    this.posX = this.ancho/2 - 10;
    this.posY = 482;
    this.imagen = loadImage("Juego/Llave.png");
  }
  
  void dibujate(){
    imageMode(CENTER);
    image(this.imagen, this.resize.porcentajeX(this.posX), this.resize.porcentajeY(this.posY), this.resize.porcentajeX(this.ancho), this.resize.porcentajeY(this.alto));
  }
  
  void moverDerecha(int velocidad){
    this.posX = this.posX + velocidad;
  }
  
  void moverIzquierda(int velocidad){
    this.posX = this.posX - velocidad;
  }
  
  void avanzar(){
    this.posY = this.posY - 4;  
  }
  
  void reubicar(){
    this.posY = 482;
  }
}
