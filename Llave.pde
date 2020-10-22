class Llave{
  int ancho;
  int alto;
  float posX2;
  float posY2;
  PImage llave;
//  float velocidad;
  float posX1;
  float posY1;
  float contador;
  
  Llave(){
    this.ancho = 50;
    this.alto = 100;
    this.contador = 0.0;
    this.posX2 = posX2;
    this.posY2 = posY2; 
    this.llave = loadImage("Llave.png");
//    this.velocidad = 0;
//    this.posX1 = width/2 + cos(velocidad) * 100;
//    this.posY1= height + sin(velocidad) * 100;

  }
  
  void dibujate(){
   // this.movete();
    push();
    background(255);
    imageMode(CENTER);
    this.contador++;
    translate(width/2, height);
    rotate(this.contador*TWO_PI/180);
    translate(-llave.width/1.5, llave.height/1.5);
    image(llave, posX, posY, ancho, alto);
    pop();
  }
  
/*  void movete(){
    this.posX1 = width/2-20 + cos(velocidad) * 100;
    this.posY1= height-100 + sin(velocidad) * 100;
    this.velocidad = velocidad + 0.10;
  }
*/
}
