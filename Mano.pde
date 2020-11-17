class Mano{
  float posX;
  float posY;
  int alto;
  int ancho; 
  PImage imagenManoActual;
  PImage imagenManoCerrada;
  PImage imagenManoAbierta;
  Resize resize;
    
  Mano(){
    this.resize = new Resize();
    this.alto = 100;
    this.ancho = 60;
    this.posX = this.ancho/2 - 10;
    this.posY = height - 50;
    this.imagenManoCerrada = loadImage("Juego/mano1.png");
    this.imagenManoAbierta = loadImage("Juego/mano2.png");
    this.imagenManoActual = this.imagenManoCerrada;
  }
  
  void dibujate(){
    imageMode(CENTER);
    image(this.imagenManoActual, this.resize.porcentajeX(this.posX), this.resize.porcentajeY(this.posY), this.resize.porcentajeX(this.ancho), this.resize.porcentajeY(this.alto));
  }
  
  void moverDerecha(int velocidad){
    this.posX = this.posX + velocidad;
  }
  
  void moverIzquierda(int velocidad){
    this.posX = this.posX - velocidad;
  }
  
  void abrir(){
    this.imagenManoActual = this.imagenManoAbierta;
  }
  
  void cerrar(){
    this.imagenManoActual = this.imagenManoCerrada;
  }
}
