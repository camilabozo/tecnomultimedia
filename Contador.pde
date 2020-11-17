class Contador{
  Texto textoEnPantalla;
  int intentosRestantes;
  Resize resize;
  
  Contador(){
    this.resize = new Resize();
    String fuenteBotones = "BodoniMTCondensed-Italic-48.vlw";
    int tamanio = 40;
    this.textoEnPantalla = new Texto(fuenteBotones, "Intentos: ", tamanio, 35, 40, 175, 65);
    this.textoEnPantalla.colorTx = color(255, 0, 0);
    this.intentosRestantes = 10;
  }
  
  void dibujate(){  
    textoEnPantalla.dibujate();
    text(this.intentosRestantes, this.resize.porcentajeX(this.textoEnPantalla.posX + 150), this.resize.porcentajeY(this.textoEnPantalla.posY + 27));
  }
  
  void decrementar(){
    this.intentosRestantes--;
  }
}
