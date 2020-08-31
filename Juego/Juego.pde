int cantCuadradosWidth = 10;
int cantCuadradosHeight = 10;
int tamW, tamH;
int [][] valores = new int [cantCuadradosWidth][cantCuadradosHeight];
//0 = Nada
//1 = Jugador1
//2 = Jugador2
//3 = Moneda

//defino la posicion del jugador 1 en las coordenadas 0,0
int jugador1posW = 0;
int jugador1posH = 0;

//defino la posicion del jugador 2 opuesto al jugador 1
int jugador2posW = cantCuadradosWidth - 1;
int jugador2posH = cantCuadradosHeight - 1;

//defino la posicion de la moneda en un lugar random del tablero
int monedaPosW = floor(random(0,cantCuadradosWidth));
int monedaPosH = floor(random(0,cantCuadradosHeight));

boolean turnoJugador1 = true;
boolean turnoJugador2 = true;

int movimientosMoneda = 0;

void setup(){
  size(600,500);
  
  surface.setResizable(true);
  
  textSize(20);
  textAlign(CENTER);
  
  for(int w=0; w < cantCuadradosWidth; w++){
    for(int h=0; h < cantCuadradosHeight; h++){
      valores[w][h] = 0;
    }
  }
  valores[jugador1posW][jugador1posH] = 1;
  valores[jugador2posW][jugador2posH] = 2;
  valores[monedaPosW][monedaPosH] = 2;
}

void draw(){  
  tamW = width/cantCuadradosWidth;
  tamH = height/cantCuadradosHeight;
  
  background(200);
  
  for(int w=0; w < cantCuadradosWidth; w++){
    for(int h=0; h < cantCuadradosHeight; h++){
      if(jugador1posW == w && jugador1posH == h){
        fill(0,255,0);
      }else if(jugador2posW == w && jugador2posH == h){
        fill(255,0,0);
      }else if(monedaPosW == w && monedaPosH == h){
        fill(255,255,0);
      }else {
        noFill();
      }
      rect(w*tamW, h*tamH, tamW, tamH);
    }
    
    //limito al jugador 1 dentro del tablero
    if(jugador1posW > cantCuadradosWidth - 1){
      jugador1posW = cantCuadradosWidth - 1;
    }
    if(jugador1posW < 0){
      jugador1posW = 0;
    }
    if(jugador1posH > cantCuadradosHeight - 1){
      jugador1posH = cantCuadradosHeight - 1;
    }
    if(jugador1posH < 0){
      jugador1posH = 0; 
    }
    //limito al jugador 2 dentro del tablero
    if(jugador2posW > cantCuadradosWidth - 1){
      jugador2posW = cantCuadradosWidth - 1;
    }
    if(jugador2posW < 0){
      jugador2posW = 0;
    }
    if(jugador2posH > cantCuadradosHeight - 1){
      jugador2posH = cantCuadradosHeight - 1;
    }
    if(jugador2posH < 0){
      jugador2posH = 0; 
    }
    
    if((jugador1posW == monedaPosW - 2 && jugador1posH == monedaPosH) || (jugador1posW == monedaPosW + 2 && jugador1posH == monedaPosH) || (jugador1posH == monedaPosH - 2 && jugador1posW == monedaPosW) || (jugador1posH == monedaPosH + 2 && jugador1posW == monedaPosW)){
      if(movimientosMoneda < 2){
        monedaPosW = floor(random(0,cantCuadradosWidth));
        monedaPosH = floor(random(0,cantCuadradosHeight));
        movimientosMoneda++;
      }
    }
    if((jugador2posW == monedaPosW - 2 && jugador2posH == monedaPosH) || (jugador2posW == monedaPosW + 2 && jugador2posH == monedaPosH) || (jugador2posH == monedaPosH - 2 && jugador2posW == monedaPosW) || (jugador2posH == monedaPosH + 2 && jugador2posW == monedaPosW)){
     if(movimientosMoneda < 2){
        monedaPosW = floor(random(0,cantCuadradosWidth));
        monedaPosH = floor(random(0,cantCuadradosHeight));
        movimientosMoneda++;
      }
    }
  }
}

void keyPressed(){
  //Jugador 1  
  if(turnoJugador1){
    if(keyCode == UP){
      jugador1posH--;
      turnoJugador1 = false;
      turnoJugador2 = true;
    }else if(keyCode == DOWN){
      jugador1posH++;
      turnoJugador1 = false;
      turnoJugador2 = true;
    }else if(keyCode == LEFT){
      jugador1posW--;
      turnoJugador1 = false;
      turnoJugador2 = true;
    }else if(keyCode == RIGHT){
      jugador1posW++;
      turnoJugador1 = false;
      turnoJugador2 = true;
    }
  //}
  
  //Jugador 2
  if(turnoJugador2){
    if(key == 'w'){
      jugador2posH--;
      turnoJugador1 = true;
      turnoJugador2 = false;
    }else if(key == 's'){
      jugador2posH++;
      turnoJugador1 = true;
      turnoJugador2 = false;
    }else if(key == 'a'){
      jugador2posW--;
      turnoJugador1 = true;
      turnoJugador2 = false;
    }else if(key == 'd'){
      jugador2posW++;
      turnoJugador1 = true;
      turnoJugador2 = false;
    }
  }
}
}
