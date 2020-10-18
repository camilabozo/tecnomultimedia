class Aguja{
    float posX1;
    float posY1;
    float posX2;
    float posY2;
    int largo;
    int ancho;  
    
  Aguja(){
    this.largo = 100;
    this.ancho = 3;
    this.posX1 = width/2;
    this.posY1= height;
    this.posX2 = width/2;
    this.posY2 = height-this.largo;
  }
  
  void dibujate(){
    strokeWeight(this.ancho);
    line(this.posX1, this.posY1, this.posX2, this.posY2);
  }
  
/*  void movete(){
    if(){
    
    }*/
    
  }
