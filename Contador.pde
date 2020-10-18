class Contador{
  String textoEnPantalla;
  int posX;
  int posY;
  color colorTexto;
  int intentosRestantes;
  int tamanioTexto;
  
  Contador(){
    this.textoEnPantalla = "Intentos: ";
    this.intentosRestantes = 3;
    this.posX = 50;
    this.posY = 50;
    this.colorTexto = color(255, 0, 0);
    this.tamanioTexto = 30;
  }
    void dibujate(){
    textSize(this.tamanioTexto);
    fill(this.colorTexto);
    text(this.textoEnPantalla + this.intentosRestantes, this.posX, this.posY);
  }
  
}
