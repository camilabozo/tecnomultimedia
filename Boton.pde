class Boton {
  PImage imagen;
  int posX, posY;
  int ancho;
  int alto;
  int pantallaAIr;
  Texto texto;
  
  Boton(Texto texto, int pantallaAIr){
    this.imagen = loadImage("boton.png");
    this.texto = texto;
    this.posX = this.texto.posX;
    this.posY = this.texto.posY - 15;
    this.ancho = 175;
    this.alto = 65;
    this.pantallaAIr = pantallaAIr;
  }
  
  void dibujate(){
    image(imagen, this.posX, this.posY, this.ancho, this.alto);
    this.texto.dibujate();
  }
  
  int mouseClicked(){
    if((mouseX >= this.posX && mouseX <= this.posX + this.ancho) && (mouseY >= this.posY && mouseY <= this.posY + this.alto)){
      return pantallaAIr;
    }else{
      return -1;
    }
  }
  
}
