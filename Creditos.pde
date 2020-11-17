class Creditos{
  Texto texto;
  PImage fondo;
  int posX, posY;
  Boton botonVolver;
  Resize resize;
 
  Creditos(){
    this.resize = new Resize();
    this.fondo = loadImage("fondoCreditos.png");
    String fuenteCreditos = "BodoniMTCondensed-Bold-48.vlw";
    String[] texto = loadStrings("textoDeCreditos.txt");
    int tamanioTexto = 40;
    this.texto = new Texto(fuenteCreditos, texto[0], 50, 200, 700, 400, 800);
    this.texto.colorTx = color(255);
    this.posX = 0;
    this.posY = 0;
    String fuenteBotones = "BodoniMTCondensed-Italic-48.vlw";
    Texto textoBoton = new Texto(fuenteBotones, "Volver", tamanioTexto, 585, 545, 175, 65);
    this.botonVolver = new Boton(textoBoton, 0, 26);
  }
  
  void dibujate(){
    imageMode(CORNER);
    image(this.fondo, this.posX, this.posY, width, height);
    this.texto.dibujate();
    this.botonVolver.dibujate();
    this.texto.subir();
  }
}
