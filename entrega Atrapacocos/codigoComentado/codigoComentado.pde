int posX, tam;
int contador = 0;
int techo = 0;
int cantidadObjetos = 10;
int [] objetosPosY = new int [cantidadObjetos];
int velocidad = 1;

void setup(){
  size(400,400);
  textSize(20);
  
  tam = width/cantidadObjetos; //40
  posX = tam * (cantidadObjetos/2);//40 * 5 = 200;
  
  for(int i=0; i < cantidadObjetos ; i++ ){ //recorre el arreglo de la posición en Y de la ellipse
    objetosPosY[i] = generarPosicionObjeto(); //se genera la posición inicial del objetoPosY[i]
  }
}

void draw(){
  background(200);
  
  for(int i=0; i < cantidadObjetos ; i++ ){ 
    objetosPosY[i]+=velocidad;               //desplaza a la ellipse en el eje Y segun la velocidad que corresponda
    
    ellipse(i*tam + tam/2, objetosPosY[i], tam/2, tam/2); //se dibuja la ellipse 
    //i*tam + tam/2 = posición en X de la ellipse
    
    if(objetosPosY[i] >= height ){  //si la posición en Y de la ellipse llega al final de la pantalla
      objetosPosY[i] = generarPosicionObjeto();  //se genera una nueva posición aleatoria para la ellipse
      techo++;                         //el techo incrementa en 1
    }
    
    //i*tam + tam/2 indica la posicion en X de la ellipse
    //objetosPosY[i] indica la posicion en Y de la ellipse
    //posX + tam/2 indica el centro de la posicion en X del jugador
    //width-tam + tam/2 indica el centro de la posicion en Y del jugador 
    if(dist(i*tam + tam/2, objetosPosY[i], posX + tam/2, width-tam + tam/2) < tam/2){ //si el jugador agarra la ellipse
      objetosPosY[i] = generarPosicionObjeto();      //se genera una nueva posición aleatoria para la ellipse
      contador++;                                    //el contador se incrementa en 1
      
      if(contador % 10 == 0){  //cuando el contador llega a 10/20/30 etc...              
        velocidad++;           //la velocidad incrementa en 1
      }
    }
  }
  
  
  
  fill(0,0,255);
  rect(posX, width-tam, tam, tam); //jugador (rect azul)
  
  fill(0);
  rect(0,0,width, techo * tam); //techo 
  
  fill(255,0,0);
  text("Contador:"+ contador, 50, 50);
  
}

void keyPressed(){
  if(keyCode == LEFT){          //si se presiona la tecla izquierda, el jugador se moverá hacia la izquierda
    posX = posX - tam;
  }else if(keyCode == RIGHT){   //si se presiona la tecla derecha, el jugador se moverá hacia la derecha
    posX = posX + tam;
  }
}

int generarPosicionObjeto(){
  return round(random(-1000,techo * tam)); //Retorna un valor aleatorio entre -1000 y el valor de (techo*tam) en el momento que es llamada la función.
  
}
