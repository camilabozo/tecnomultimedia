class Texto{
  String contenido;
  float tamanio;
  PFont fuente;
  color colorTx;
  int posX, posY, ancho, alto;
  PFont fuenteTitulo;
  
  Texto(String fuente, String contenido, int tamanio, int posX, int posY, int ancho, int alto){
    this.contenido = contenido;
    this.tamanio = tamanio;
    this.fuente = loadFont(fuente);
    this.colorTx = 0;
    this.posX = posX;
    this.posY = posY;
    this.ancho = ancho;
    this.alto = alto;   
    this.fuenteTitulo = loadFont("VinerHandITC-48.vlw");
  }
  
  void dibujate(){
    textFont(this.fuente);
    textSize(this.tamanio);
    fill(this.colorTx);
    text(this.contenido, this.posX, this.posY, this.ancho, this.alto);
    if(this.fuente == fuenteTitulo){
      this.sombrear();
      println("hay que sombrear");
    }

  }
  
  void sombrear(){
    fill(0);
    text(this.contenido, this.posX+3, this.posY+3, this.ancho, this.alto);
  }

}
