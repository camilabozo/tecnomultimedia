class Creditos{
  Texto textoCreditos;
  PImage imagen;
  int posX, posY;
  Boton botonVolver;
  
  Creditos(Texto textoCreditos){
    textAlign(CENTER);
    this.imagen = loadImage("pantalla0.png");
    this.textoCreditos = textoCreditos;
  }
  
  void dibujate(){
    this.textoCreditos.dibujate();
    this.botonVolver.dibujate();
  }
  
  void subir(){
    this.posY--;
  }


}
