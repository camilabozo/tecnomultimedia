class Cerradura{
  int ancho;
  int alto;
  int posX;
  int posY;
  PImage cerradura;
  
  Cerradura(){
    this.ancho = 200;
    this.alto = 250;
    this.posX = width/2-100;
    this.posY = 0; 
    this.cerradura = loadImage("Cerradura.png");
  }
  
  void dibujate(){
    image(cerradura,this.posX,this.posY,this.ancho,this.alto);
  }

}
