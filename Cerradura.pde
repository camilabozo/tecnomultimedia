class Cerradura{
  int ancho;
  int alto;
  int posX;
  int posY;
  PImage imagenCerradura;
  String sentido;
  int velocidad;
  
  Cerradura(){
    this.ancho = 75;
    this.alto = 125;
    this.posX = width/2;
    this.posY = 125; 
    this.imagenCerradura = loadImage("Cerradura.png");
    this.sentido = "I";
    this.velocidad = 5;
  }
  
  void dibujate(){
    imageMode(CENTER);
    image(this.imagenCerradura,this.posX,this.posY,this.ancho,this.alto);
  }
  
  void moverDerecha(){
    this.posX = this.posX + velocidad;
  }
  
  void moverIzquierda(){
    this.posX = this.posX - velocidad;
  }
  
  void mover(){
    if(this.sentido == "D"){
      this.moverDerecha();
    }
    if(this.sentido == "I"){
      this.moverIzquierda();
    }
    if(this.posX <= this.ancho/2){
      this.sentido = "D";
    }
    if(this.posX >= width - this.ancho/2){
      this.sentido = "I";
    }
  }  

}
