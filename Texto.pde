class Texto{
  String contenido;
  float tamanio;
  PFont fuente;
  color colorTx;
  int posX, posY, ancho, alto;
  Resize resize;
  
  Texto(String fuente, String contenido, int tamanio, int posX, int posY, int ancho, int alto){
    this.resize = new Resize();
    this.contenido = contenido;
    this.tamanio = tamanio;
    this.fuente = loadFont(fuente);
    this.colorTx = 0;
    this.posX = posX;
    this.posY = posY;
    this.ancho = ancho;
    this.alto = alto;   
  }
  
  void dibujate(){
    textAlign(CENTER);
    textFont(this.fuente, this.resize.porcentajeY(this.tamanio));
    fill(this.colorTx);
    text(this.contenido, this.resize.porcentajeX(this.posX), this.resize.porcentajeY(this.posY), this.resize.porcentajeX(this.ancho), this.resize.porcentajeY(this.alto));
  }
  
  void subir(){
    this.posY--;
  }
  
  void reposicionarse(){
    this.posY = 700;
  }

}
