class Llave{
  int ancho;
  int alto;
  float posX;
  float posY;
  PImage imagenLlave;
  
  Llave(){
    this.ancho = 50;
    this.alto = 100;
    this.posX = this.ancho/2;
    this.posY = height - 118;
    this.imagenLlave = loadImage("Llave.png");
  }
  
  void dibujate(){
    imageMode(CENTER);
    image(this.imagenLlave, this.posX, this.posY, this.ancho, this.alto);
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
    this.posY = height - 118;
  }
}
