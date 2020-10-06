class Jugador{
  color colorRect;
  int posX;
  int posY;
  int ancho;
  int alto;
  
  Jugador(color colorRect, int posX, int posY, int ancho, int alto){
    this.colorRect = colorRect;
    this.posX = posX;
    this.posY = posY;
    this.ancho = ancho;
    this.alto = alto;
  }
  
  void dibujate(){
    fill(this.colorRect);
    rect(this.posX, this.posY, this.ancho, this.alto);
  }
 
  void moverIzq(){
    posX = posX - ancho;
  }
  
  void moverDcha(){
    posX = posX + ancho;
  }
}
