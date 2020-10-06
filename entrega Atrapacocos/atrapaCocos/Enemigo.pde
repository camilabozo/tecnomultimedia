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
    //println(this.posX, this.posY, this.ancho, this.alto);
    fill(colorEnemigo);
    ellipse(this.posX, this.posY, this.ancho, this.alto);
  }
  
  void descender(int velocidad){
    this.posY = this.posY + velocidad;
  }

}
