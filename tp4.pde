import processing.sound.*;
int posX;
int posY = 700;
PFont monotypeFont;
PImage pantallaActual;
PImage[] pantallas = new PImage[19];

void setup (){
  size (800,600);
  posX = width/2;
  monotypeFont = loadFont("MonotypeCorsiva-48.vlw");
  SoundFile terror; 
  terror = new SoundFile(this, "terror.mp3");
  terror.play(); 
  for(int i = 0; i <= 18; i++){
    pantallas[i] = loadImage("pantalla"+ i +".jpg");
  }
  pantallaActual = pantallas[1];
}

void draw(){ 
  image (pantallaActual,0,0,width,height);
  
  //CREDITOS
  if(pantallaActual == pantallas[0]){
    mostrarCreditos();
  }
}

void mostrarCreditos(){ 
  textAlign(CENTER);
  textFont(monotypeFont, 45);
  text("Créditos", posX, posY);
  text("Autor: 'Los hermanos Grimm'", posX, posY + 100);
  text("Hansel & Gretel", posX, posY + 150);
  text("Modificaciones en la historia: \n Camila Ailén Bozo", posX, posY + 200);
  text("Tecnología Multimedial I: TP N°3 \n Aventura Gráfica", posX, posY + 350);
  posY = posY - 2;
}

void mouseClicked(){
//println("posX:" + mouseX + "posY:" + mouseY); //imprime el valor de X e Y en consola

  if(pantallaActual == pantallas[1]){
    botonSeleccionado(101, 327, 423, 487, pantallas[2]); //boton comenzar
    botonSeleccionado(470, 695, 423, 487, pantallas[0]); //boton creditos
  }else if(pantallaActual == pantallas[0]){ 
    botonSeleccionado(634, 746, 514, 561, pantallas[1]); // boton volver al inicio
    posY = 700;
  }else if (pantallaActual == pantallas[2]){ 
    botonSeleccionado(649, 768, 530, 574, pantallas[17]); //boton continuar
  }else if (pantallaActual == pantallas[17]){
    botonSeleccionado(649, 768, 530, 574, pantallas[18]); //boton continuar
  }else if (pantallaActual == pantallas[18]){
    botonSeleccionado(649, 768, 530, 574, pantallas[3]); //boton continuar
  }else if (pantallaActual == pantallas[3]){
    botonSeleccionado(443, 526, 513, 562, pantallas[4]); //SI
    botonSeleccionado(663, 747, 513, 562, pantallas[5]); //NO
  }else if(pantallaActual == pantallas[4]){
    botonSeleccionado(443, 526, 513, 562, pantallas[8]); //SI
    botonSeleccionado(663, 747, 513, 562, pantallas[5]); //NO
  }else if (pantallaActual == pantallas[5] || pantallaActual == pantallas[9] || pantallaActual == pantallas[12] || pantallaActual == pantallas[14]){  
    botonSeleccionado(649, 768, 530, 574, pantallas[6]); //boton continuar  
  }else if (pantallaActual == pantallas[6]){
    if (mouseX >= 44 && mouseX <= 160 && mouseY >= 513 && mouseY <= 563){ //NO
      exit();
    } 
    botonSeleccionado(634, 746, 513, 563, pantallas[1]); //SI
  }else if(pantallaActual == pantallas[7]){
    botonSeleccionado(634, 746, 514, 561, pantallas[1]); // boton volver al inicio
  }else if (pantallaActual == pantallas[8]){
    botonSeleccionado(443, 526, 513, 562, pantallas[9]); //SI
    botonSeleccionado(663, 747, 513, 562, pantallas[10]); //NO
  }else if (pantallaActual == pantallas[10]){ 
    botonSeleccionado(443, 526, 513, 562, pantallas[11]); //SI
    botonSeleccionado(663, 747, 513, 562, pantallas[9]); //NO
  }else if (pantallaActual == pantallas[11]){ 
    botonSeleccionado(443, 526, 513, 562, pantallas[13]); //SI
    botonSeleccionado(663, 747, 513, 562, pantallas[12]); //NO
  }else if (pantallaActual == pantallas[13]){ 
    botonSeleccionado(443, 526, 513, 562, pantallas[15]); //SI
    botonSeleccionado(663, 747, 513, 562, pantallas[14]); //NO
  }else if (pantallaActual == pantallas[15]){ 
    botonSeleccionado(443, 526, 513, 562, pantallas[16]); //SI
    botonSeleccionado(663, 747, 513, 562, pantallas[14]); //NO
  }else if(pantallaActual == pantallas[16]){
    botonSeleccionado(649, 768, 530, 574, pantallas[7]); //boton continuar  
  }  
} 

void botonSeleccionado(int mayorEnX, int menorEnX, int mayorEnY, int menorEnY, PImage pantallaDestino){
  if((mouseX >= mayorEnX && mouseX <= menorEnX) && (mouseY >= mayorEnY && mouseY <= menorEnY)){ 
        pantallaActual = pantallaDestino;
  }

}

void manito(int mayorEnX, int menorEnX, int mayorEnY, int menorEnY){
  if((mouseX >= mayorEnX && mouseX <= menorEnX) && (mouseY >= mayorEnY && mouseY <= menorEnY)){
    cursor(HAND);
  }else{
    cursor(ARROW);
  }
}

void mouseMoved(){
  if(pantallaActual == pantallas[2] || pantallaActual == pantallas[17] || pantallaActual == pantallas[18] || pantallaActual == pantallas[5] || pantallaActual == pantallas[9] || //BOTON CONTINUAR
    pantallaActual == pantallas[12] || pantallaActual == pantallas[14] || pantallaActual == pantallas[16]){
    manito(649, 768, 530, 574); //BOTON CONTINUAR
  }
  if(pantallaActual == pantallas[6]){
    manito(44, 160, 513, 563); // NO
    manito(634, 746, 514, 561); // SI
  }
  if(pantallaActual == pantallas[3] || pantallaActual == pantallas[4] || pantallaActual == pantallas[8] || pantallaActual == pantallas[10] || 
   pantallaActual == pantallas[11] || pantallaActual == pantallas[13] || pantallaActual == pantallas[15]){
     manito(443, 526, 513, 562); // SI 
     manito(663, 747, 513, 562); // NO
  }
  if(pantallaActual == pantallas[0] || pantallaActual == pantallas[7]){
    manito(634, 746, 514, 561); // VOLVER
  }
  if(pantallaActual == pantallas[1]){
    manito(101, 327, 423, 487); // COMENZAR
    manito(470, 695, 423, 487); // CREDITOS
  }
}
