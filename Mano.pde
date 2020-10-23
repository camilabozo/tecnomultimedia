class Mano{
  float posX;
  float posY;
  int alto;
  int ancho; 
  PImage imagenManoActual;
  PImage imagenManoCerrada;
  PImage imagenManoAbierta;
    
  Mano(){
    this.alto = 100;
    this.ancho = 60;
    this.posX = this.ancho/2 - 10;
    this.posY = height - 50;
    this.imagenManoCerrada = loadImage("mano1.jpg");
    this.imagenManoAbierta = loadImage("mano2.jpg");
    this.imagenManoActual = this.imagenManoCerrada;
  }
  
  void dibujate(){
    imageMode(CENTER);
    image(this.imagenManoActual, this.posX, this.posY, this.ancho, this.alto);
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
