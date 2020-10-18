class Llave{
  int ancho;
  int alto;
  int posX;
  int posY;
  PImage llave;
  
  Llave(){
    this.ancho = 50;
    this.alto = 100;
    this.posX = width/2-20;
    this.posY = height-200; 
    this.llave = loadImage("Llave.png");
  }
  
  void dibujate(){
    image(llave, this.posX, this.posY, this.ancho, this.alto);
  }

}
