class Techo{
  color colorTecho;
  int posX;
  int posY;
  int ancho;
  int alto;

  Techo(){
    this.colorTecho = color(0);
    this.posX = 0;
    this.posY = 0;
    this.ancho = width;
    this.alto = 0;
  } 
  
  void dibujate(){
    fill(this.colorTecho);
    rect(this.posX, this.posY, this.ancho, this.alto * tam);
  }
  
  void aplastarJugador(){
    this.alto++;
  }   
}
