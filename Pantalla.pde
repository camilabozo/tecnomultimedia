class Pantalla{
  Texto historia;
  PImage imagen;
  int num, posX, posY;
  Boton[] botones;
  Resize resize;
  
  Pantalla(Texto historia, int num, Boton[] botones){
    this.resize = new Resize();
    this.num = num;
    this.imagen = loadImage("pantalla"+ num +".png");
    this.posX = 0;
    this.posY = 0;
    this.historia = historia;
    this.botones = botones;
    }
 
  void dibujate(){
    imageMode(CORNER);
    image(imagen, this.posX, this.posY, width, height);
    this.historia.dibujate();
    this.botones[0].dibujate();
    if(this.botones[1] != null){
      this.botones[1].dibujate();
    }
  }
  
  int mouseClicked(){
    int pantallaAIr = botones[0].mouseClicked();     //botones[0].mouseClicked retorna una pantallaAIr en caso de que se haya clickeado el boton, sino -1
    
    if(botones[1] != null && pantallaAIr == -1){  //si existe un segundo boton (el de la izq) y no se clickeo el boton de la derecha, o sea pantallaAIr == -1
      pantallaAIr = botones[1].mouseClicked();   //chequea si se clickeo el boton de la izq.
    }
    return pantallaAIr;                          //retorna el valor de pantallaAIr, si es -1 (significa que no se clickeo ningun boton)
  }

}
