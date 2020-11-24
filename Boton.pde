class Boton {
  PImage imagen;
  int posX, posY;
  int ancho;
  int alto;
  int pantallaAIr;
  Texto texto;
  int num;
  Resize resize;
  
  Boton(Texto texto, int pantallaAIr, int num){
    this.resize = new Resize();
    this.imagen = loadImage("boton.png");
    this.num = num;
    this.texto = texto;
    this.posX = this.texto.posX;
    this.posY = this.texto.posY - 15;
    this.ancho = 175;
    this.alto = 65;
    this.pantallaAIr = pantallaAIr;
  }
 
  void dibujate(){
    imageMode(CORNER);
    image(imagen, this.resize.porcentajeX(this.posX), this.resize.porcentajeY(this.posY), this.resize.porcentajeX(this.ancho), this.resize.porcentajeY(this.alto));
    this.texto.dibujate();
  }
  
  boolean presionado(){
    if((mouseX >= this.resize.porcentajeX(this.posX) && mouseX <= this.resize.porcentajeX(this.posX + this.ancho)) && (mouseY >= this.resize.porcentajeY(this.posY) && mouseY <= this.resize.porcentajeY(this.posY + this.alto))){
      return true;
    }else{
      return false;
    }
  }
  
  int mouseClicked(){                        
    if(this.presionado()){                              //Si el botón presionado
      switch(this.num) {                                //La variable que se evalúa en este switch es el num del boton
        case 1: 
          aventura.mostrarCreditos = true;
          break;
        case 17:
          aventura.juego.activo = true;
        case 26: 
          aventura.mostrarCreditos = false;
          aventura.creditos.texto.reposicionarse();
          break;
      }
      return this.pantallaAIr;                          //Incondicionalmente retorna la pantallaAIr
    }else{
      return -1;                                        //Si no se clickea ningún botón, retorna -1(no te lleva a ninguna pantalla)
    }
  }  
}
