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
    this.posX = this.ancho/2;
    this.posY = height - 118;
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
    println("POR REUBICAR" + this.posY);
    this.posY = height - this.resize.porcentajeY(118);
    println("REUBICADA" + this.posY + "ALTO" + height);
  }
}
