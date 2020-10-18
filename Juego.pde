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
    llave.dibujate();
    aguja.dibujate();
    cerradura.dibujate();
    contador.dibujate();
  }
}
