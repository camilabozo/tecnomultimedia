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
    if(keyCode == LEFT){  //si se presiona la tecla izquierda, el jugador se moverá hacia la izquierda
      posX = posX - ancho;
    }
  }
  void moverDcha(){
    if(keyCode == RIGHT){  //si se presiona la tecla derecha, el jugador se moverá hacia la derecha
      posX = posX + ancho;
    }
  }
}
