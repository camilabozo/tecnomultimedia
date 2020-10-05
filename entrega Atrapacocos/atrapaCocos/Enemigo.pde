class Enemigo{
  color colorEllipse;
  int posX;
  int posY;
  int ancho;
  int alto;
  
  Enemigo(int posX){
    this.colorEllipse = color(colorEnemigo);
    this.posX = posX;
    this.ancho = tam/2;
    this.alto = tam/2;
  }
    
  int getPosY(){
    return this.posY;
  }
  
  void setPosY(int nuevaPosY){
    this.posY = nuevaPosY;
  }
    
  void dibujate(){
    println(posX, posY, ancho, alto);
    fill(colorEnemigo);
    ellipse(posX, posY, ancho, alto);
  }
  
  void descender(int velocidad){
    this.posY = this.posY + velocidad;
  }

}
