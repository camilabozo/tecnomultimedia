import processing.sound.*;
int posX;
int posY = 700;
PFont monotypeFont;
PImage pantallaActual, pantalla1, pantalla2A, pantalla2B, pantalla2C, pantalla3, pantalla4, pantalla5, pantalla6, pantalla7, pantalla8, pantalla9, pantalla10,
pantalla11, pantalla12, pantalla13, pantalla14, pantalla15, pantalla16, pantallaDeCreditos;

void setup (){
  size (800,600);
  posX = width/2;
  monotypeFont = loadFont("MonotypeCorsiva-48.vlw");
  SoundFile terror; 
  terror = new SoundFile(this, "terror.wav");
  terror.play();
  pantalla1 = loadImage ("pantalla1.jpg");
  pantallaActual = pantalla1;
  pantallaDeCreditos = loadImage ("pantallaDeCreditos.jpg");
  pantalla2A = loadImage ("pantalla2A.jpg");
  pantalla2B = loadImage ("pantalla2B.jpg");
  pantalla2C = loadImage ("pantalla2C.jpg");
  pantalla3 = loadImage ("pantalla3.jpg");
  pantalla4 = loadImage ("pantalla4.jpg");
  pantalla5 = loadImage ("pantalla5.jpg");
  pantalla6 = loadImage ("pantalla6.jpg");
  pantalla7 = loadImage ("pantalla7.jpg");
  pantalla8 = loadImage ("pantalla8.jpg");
  pantalla9 = loadImage ("pantalla9.jpg");
  pantalla10 = loadImage ("pantalla10.jpg");
  pantalla11 = loadImage ("pantalla11.jpg");
  pantalla12 = loadImage ("pantalla12.jpg");
  pantalla13 = loadImage ("pantalla13.jpg");
  pantalla14 = loadImage ("pantalla14.jpg");
  pantalla15 = loadImage ("pantalla15.jpg");
  pantalla16 = loadImage ("pantalla16.jpg");
}

void draw(){ 
  image (pantallaActual,0,0);
  
  //CREDITOS
  if(pantallaActual == pantallaDeCreditos){
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
//  println("posX:" + mouseX + "posY:" + mouseY); imprime el valor de X e Y en consola
  if(pantallaActual == pantalla1){
     if((mouseX >=101 && mouseX <=327) && (mouseY >=423 && mouseY <=487)){ //boton comenzar
       pantallaActual = pantalla2A;
     }else if((mouseX >=470 && mouseX <=695) && (mouseY >=423 && mouseY <=487)){ //boton creditos
       pantallaActual = pantallaDeCreditos;
     }
   }else if(pantallaActual == pantallaDeCreditos){ 
      if((mouseX >=634 && mouseX<=746) && (mouseY >=514 && mouseY <=561)){ // boton volver al inicio
        pantallaActual = pantalla1;
        posY = 700;
      }
   }else if (pantallaActual == pantalla2A){ 
      if((mouseX >=649 && mouseX<=768) && (mouseY >=530 && mouseY <=574)){ //boton continuar
        pantallaActual = pantalla2B;
      }
   }else if (pantallaActual == pantalla2B){
      if((mouseX >=649 && mouseX<=768) && (mouseY >=530 && mouseY <=574)){ //boton continuar
        pantallaActual = pantalla2C;
      } 
   }else if (pantallaActual == pantalla2C){
      if((mouseX >=649 && mouseX<=768) && (mouseY >=530 && mouseY <=574)){ //boton continuar
        pantallaActual = pantalla3;
      }  
   }else if (pantallaActual == pantalla3){ 
      if((mouseX >=443 && mouseX<=526) && (mouseY >=513 && mouseY <=562)){ //SI
        pantallaActual = pantalla4;
      }else if((mouseX >=663 && mouseX<=747) && (mouseY >=513 && mouseY <=562)){ //NO
        pantallaActual = pantalla5;
      }
   }else if (pantallaActual == pantalla5){  
      if((mouseX >=649 && mouseX<=768) && (mouseY >=530 && mouseY <=574)){ //boton continuar
        pantallaActual = pantalla6;
      }   
   }else if (pantallaActual == pantalla6){
      if((mouseX >=44 && mouseX<=160) && (mouseY >=513 && mouseY <=563)){ //NO
        pantallaActual = pantalla7;
      }else if((mouseX >=634 && mouseX<=746) && (mouseY >=514 && mouseY <=561)){ //SI
        pantallaActual = pantalla1;
      }  
   }else if(pantallaActual == pantalla4){ 
      if((mouseX >=443 && mouseX<=526) && (mouseY >=513 && mouseY <=562)){ //SI
        pantallaActual = pantalla8;        
      }else if((mouseX >=663 && mouseX<=747) && (mouseY >=513 && mouseY <=562)){ //NO
        pantallaActual = pantalla5;
      }
   }else if(pantallaActual == pantalla7){
      if((mouseX >=634 && mouseX<=746) && (mouseY >=514 && mouseY <=561)){ //VOLVER
        pantallaActual = pantalla1;       
      }  
   }else if (pantallaActual == pantalla8){
      if((mouseX >=444 && mouseX<=527) && (mouseY >=514 && mouseY <=565)){ //SI
        pantallaActual = pantalla9;
      }else if((mouseX >=664 && mouseX<=747) && (mouseY >=514 && mouseY <=561)){ //NO
        pantallaActual = pantalla10;        
      }  
    }else if (pantallaActual == pantalla9){
      if((mouseX >=649 && mouseX<=768) && (mouseY >=530 && mouseY <=574)){ //boton continuar
        pantallaActual = pantalla6;
      }  
    }else if (pantallaActual == pantalla10){ 
      if((mouseX >=443 && mouseX<=526) && (mouseY >=513 && mouseY <=562)){ //SI
        pantallaActual = pantalla11;
      }else if((mouseX >=663 && mouseX<=747) && (mouseY >=513 && mouseY <=562)){ //NO
        pantallaActual = pantalla9;
      }
    }else if (pantallaActual == pantalla11){ 
      if((mouseX >=443 && mouseX<=526) && (mouseY >=513 && mouseY <=562)){ //SI
        pantallaActual = pantalla13;
      }else if((mouseX >=663 && mouseX<=747) && (mouseY >=513 && mouseY <=562)){ //NO
        pantallaActual = pantalla12;
      }
    }else if (pantallaActual == pantalla12){
      if((mouseX >=649 && mouseX<=768) && (mouseY >=530 && mouseY <=574)){ //boton continuar
        pantallaActual = pantalla6;
      }
    }else if (pantallaActual == pantalla13){ 
      if((mouseX >=443 && mouseX<=526) && (mouseY >=513 && mouseY <=562)){ //SI
        pantallaActual = pantalla15;
      }else if((mouseX >=663 && mouseX<=747) && (mouseY >=513 && mouseY <=562)){ //NO
        pantallaActual = pantalla14;
      }
    }else if (pantallaActual == pantalla14){
      if((mouseX >=649 && mouseX<=768) && (mouseY >=530 && mouseY <=574)){ //boton continuar
        pantallaActual = pantalla6;
      }
    }else if (pantallaActual == pantalla15){ 
      if((mouseX >=443 && mouseX<=526) && (mouseY >=513 && mouseY <=562)){ //SI
        pantallaActual = pantalla16;
      }else if((mouseX >=663 && mouseX<=747) && (mouseY >=513 && mouseY <=562)){ //NO
        pantallaActual = pantalla14;
      }
    }else if(pantallaActual == pantalla16){
      if((mouseX >=649 && mouseX<=768) && (mouseY >=530 && mouseY <=574)){ //boton continuar
        pantallaActual = pantalla7;
      }
   }  
}  

void mouseMoved(){
  if(pantallaActual == pantalla2A || pantallaActual == pantalla2B || pantallaActual == pantalla2C || pantallaActual == pantalla5 || pantallaActual == pantalla9 || //BOTON CONTINUAR
   pantallaActual == pantalla12 || pantallaActual == pantalla14 || pantallaActual == pantalla16){
      if((mouseX >=649 && mouseX<=768) && (mouseY >=530 && mouseY <=574)){ //boton continuar
        cursor(HAND);
      }else{
        cursor(ARROW);
      }
   }
   if(pantallaActual == pantalla6){
     if((mouseX >=44 && mouseX<=160) && (mouseY >=513 && mouseY <=563) || (mouseX >=634 && mouseX<=746) && (mouseY >=514 && mouseY <=561)){ //boton NO /SI
      cursor(HAND);
    }else{
      cursor(ARROW);
    }
   }
   if(pantallaActual == pantalla3 || pantallaActual == pantalla4 || pantallaActual == pantalla8 || pantallaActual == pantalla10 || 
       pantallaActual == pantalla11 || pantallaActual == pantalla13 || pantallaActual == pantalla15){
     if((mouseX >=443 && mouseX<=526) && (mouseY >=513 && mouseY <=562) || (mouseX >=663 && mouseX<=747) && (mouseY >=513 && mouseY <=562)){ //boton SI/NO
       cursor(HAND);
       }else{
        cursor(ARROW);
      }
   }
   if(pantallaActual == pantallaDeCreditos || pantallaActual == pantalla7){
     if((mouseX >=634 && mouseX<=746) && (mouseY >=514 && mouseY <=561)){//boton volver
       cursor(HAND);
     }else{
       cursor(ARROW);
     }
  }
  if(pantallaActual == pantalla1){
    if((mouseX >=101 && mouseX <=327) && (mouseY >=423 && mouseY <=487) || (mouseX >=470 && mouseX <=695) && (mouseY >=423 && mouseY <=487) ){ //boton comenzar/creditos
      cursor(HAND);
    }else{
      cursor(ARROW);
    }
  }
}
