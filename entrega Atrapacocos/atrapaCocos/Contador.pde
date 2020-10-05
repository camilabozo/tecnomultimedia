class Contador{
  String textoEnPantalla;
  int posX;
  int posY;
  int cantidadDeEllipsesAtrapadas;
  color colorTexto;
  int tamanioTexto;
  
  Contador(int posX, int posY, color colorTexto, int tamanioTexto){
    this.textoEnPantalla = "Contador: ";
    this.cantidadDeEllipsesAtrapadas = 0;
    this.posX = posX;
    this.posY = posY;
    this.colorTexto = colorTexto;
    this.tamanioTexto = tamanioTexto;
  }
  
  void dibujate(){
    textSize(this.tamanioTexto);
    fill(this.colorTexto);
    text(this.textoEnPantalla + this.cantidadDeEllipsesAtrapadas, this.posX, this.posY);
  }
    
  void incrementarse(){
    this.cantidadDeEllipsesAtrapadas++;
  }
  
}
