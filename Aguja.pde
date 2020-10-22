class Aguja{
    float posX1;
    float posY1;
    float posX2;
    float posY2;
    int largo;
    int ancho; 
    float velocidad;
    
  Aguja(){
    this.largo = 100;
    this.ancho = 3;
    this.posX1 = 1;
    this.posY1= height - this.largo;
    this.posX2 = 1;
    this.posY2 = height;
    this.velocidad = 0;

  }
  
  void dibujate(){
    strokeWeight(this.ancho);
    line(this.posX1, this.posY1, this.posX2, this.posY2);
    this.movete();
    this.volver();
  }
  
  void movete(){
    this.velocidad++;
    this.posX1 = this.posX1 + velocidad;
    this.posX2 = this.posX2 + velocidad;
  }
  
  void volver(){
    if(this.posX1 == width && this.posX2 == width){
      this.velocidad--;
      this.posX1 = this.posX1 - velocidad;
      this.posX2 = this.posX2 - velocidad;
   // }else{
     // this.movete();
    }
  }
}
