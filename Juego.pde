class Juego{
  Llave llave;
  Aguja aguja;
  Cerradura cerradura;
  Contador contador;
  color fondo;
  
  Juego(){
    this.llave = new Llave();
    this.aguja = new Aguja();
    this.cerradura = new Cerradura();
    this.contador = new Contador();
    this.fondo = color(225);
  }
  
  void dibujate(){
   // background(255);
   // llave.dibujate();
    aguja.dibujate();
   // cerradura.dibujate();
    //contador.dibujate();
  }
  
  void cambiarVelocidad(float velocidad){
    this.aguja.velocidad = velocidad;
 //   this.llave.velocidad = velocidad;
  }
}
