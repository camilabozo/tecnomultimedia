int cantidadEllipses = 10;
int tamanioEllipse;
int [] posXdeEllipse = new int [cantidadEllipses]; // Posiciones en X de cada ellipse
int [] dirXdeEllipse = new int [cantidadEllipses]; // Direcciones en X de cada ellipse
int personajePosX, personajePosY;
boolean fin = false;

void setup() {
  size(500, 500);
  tamanioEllipse = height/cantidadEllipses;

  surface.setResizable(true);

  textSize(50);
  textAlign(CENTER);
  frameRate(120);
  
  //No calculo la última fila, que es donde arranca el personaje
  for (int h=0; h < cantidadEllipses-1; h++) {
    //Genero aleatoriamente la posX de la elipse
    posXdeEllipse[h] = round(random(tamanioEllipse, width-tamanioEllipse));
    //Genero aleatoriamente la dirección (izq o dcha)
    if (random(0, width)>width/2){
      dirXdeEllipse[h] = 1;
    }else{
      dirXdeEllipse[h] = -1;
    }
  }
  
  //La ubicación del Personaje
  personajePosX = width/2;
  personajePosY = height - tamanioEllipse/2;
}

void draw() {  
  tamanioEllipse = height/cantidadEllipses;
  background(200);
  
    //No calculo la última fila, que es donde arranca el personaje //<>//
    for (int h=0; h < cantidadEllipses-1; h++) {
      if(!fin){
        int posYdeEllipse = h*tamanioEllipse + tamanioEllipse/2;
        fill(255);
        ellipse(posXdeEllipse[h], posYdeEllipse, tamanioEllipse, tamanioEllipse);
        //Calculo la nueva posición
        posXdeEllipse[h] = posXdeEllipse[h] + dirXdeEllipse[h];
        //Si toca algún borde, cambia la dirección
        if (posXdeEllipse[h] < tamanioEllipse/2 || posXdeEllipse[h] > width-tamanioEllipse/2) {
          dirXdeEllipse[h] = dirXdeEllipse[h] * -1;
        }
        fill(255,0,0);
        ellipse(personajePosX, personajePosY, tamanioEllipse, tamanioEllipse); 
     
        fin = perdiste(h, posYdeEllipse, personajePosX);
      }
      if(fin){
        background(0);
        fill(255);
        text("PERDISTE!", width/2, height/2);
      } 
    }
}

boolean perdiste(int h, int posYdeEllipse, int personajePosX){
  
  int bordeDerechoPersonaje = personajePosX + tamanioEllipse/2;
  int bordeIzquierdoPersonaje = personajePosX - tamanioEllipse/2;
  int bordeDerechoEllipse = posXdeEllipse[h] + tamanioEllipse/2;
  int bordeIzquierdoEllipse = posXdeEllipse[h] - tamanioEllipse/2;
  int bordeSupPersonaje = personajePosY - tamanioEllipse/2;
  int bordeInfPersonaje = personajePosY + tamanioEllipse/2;
  int bordeSupEllipse = posYdeEllipse - tamanioEllipse/2;
  int bordeInfEllipse = posYdeEllipse + tamanioEllipse/2;
  
  if(personajePosY == posYdeEllipse){
   
    if(bordeDerechoPersonaje == bordeIzquierdoEllipse || bordeIzquierdoPersonaje == bordeDerechoEllipse){
      return true;
    }
   }
   if(personajePosX == posXdeEllipse[h]){
    if(bordeSupPersonaje <= bordeDerechoEllipse && bordeSupPersonaje >= bordeIzquierdoEllipse){
       println("ENTRA EL SEGUNDO IF");
       println(bordeSupPersonaje, bordeDerechoEllipse, bordeIzquierdoEllipse);
        println(h);
       return true;
    }
    if(bordeInfPersonaje <= bordeDerechoEllipse && bordeInfPersonaje >= bordeIzquierdoEllipse){
      println("ENTRA EL TERCER IF");
       println(h);
      return true;
    }
    }
  return false;
}

void keyPressed() {
  //Controlo el personaje arriba y abajo
  if (keyCode == UP) {
    personajePosY = personajePosY - tamanioEllipse;
  } else if (keyCode == DOWN) {
    personajePosY = personajePosY + tamanioEllipse;
    if(personajePosY > height){
    personajePosY = height - tamanioEllipse/2;
    }
  }
}
