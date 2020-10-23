class Boton{
  PImage imagenBoton;
  int posX;
  int posY;
  int ancho;
  int alto;
  String texto;
  
  Boton(String texto, int posX, int posY){
    this.imagenBoton = loadImage("boton.png");
    this.ancho = 100;
    this.alto = 50;
    this.posX = posX;
    this.posY = posY;
    this.texto = texto;
  }
  
  void dibujate(){
    imageMode(CENTER);
    image(imagenBoton, this.posX, this.posY, this.ancho, this.alto);
    textAlign(CENTER);
    textSize(15);
    fill(0);
    text(this.texto, this.posX, this.posY + 5);
  }
  
  boolean presionado(){
    if((mouseX >= this.posX - this.ancho/2 && mouseX <= this.posX + this.ancho/2) && (mouseY >= this.posY - this.alto/2 && mouseY <= this.posY + this.alto/2)){
      return true;
    }else{
      return false;
    }
  }
  
  
}
