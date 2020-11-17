class Aventura{
//  SoundFile terror;
  Pantalla pantallaActual;
  int cantidadPantallas;
  int cantidadDeBotones;
  PImage[] imagenes;
  Pantalla[] pantallas;
  Texto[] textoDeBotones; 
  Texto[] textoDePantallas; 
  Boton[] botones;
  Boton[][] botonesDePantallas;
  Juego juego;
  Creditos creditos;
  boolean mostrarCreditos;
  
  Aventura(PApplet pApplet){
//    this.terror = new SoundFile(pApplet, "terror.mp3");   //referencia: https://forum.processing.org/one/topic/reference-papplet-of-sketch.html
//    this.terror.play();
    this.cantidadPantallas = 18;
    this.cantidadDeBotones = 26;
    this.mostrarCreditos = false;
    this.juego = new Juego();
    this.cargarTextos();
    this.cargarBotones();
    this.cargarPantallas();
    this.creditos = new Creditos();
    this.pantallaActual = this.pantallas[0];
  }
  
  void dibujate(){
    background(255);
    if(this.juego.activo){
      aventura.juego.jugar();
    }else{
      if(this.mostrarCreditos){
        this.creditos.dibujate();
      }else{
        this.pantallaActual.dibujate();
      }
    }
  }
  
  void cargarPantallas(){
    this.pantallas = new Pantalla [cantidadPantallas];
    this.imagenes = new PImage [cantidadPantallas];
    for(int i = 0; i < cantidadPantallas; i++){
      imagenes[i] = loadImage("pantalla" + i + ".png");
      this.pantallas[i] = new Pantalla(this.textoDePantallas[i], i, this.botonesDePantallas[i]);
    }
  }
  
  //Cargo los textos con un arreglo de textos, utilizando la funcion loadStrings que me permite traerlos desde un archivo .txt
    
  void cargarTextos(){
    String fuenteHistoria = "TwCenMT-Condensed-48.vlw";
    String fuenteTitulo = "VinerHandITC-48.vlw";
    String[] textos = loadStrings("textoDePantallas.txt");  
    this.textoDePantallas = new Texto [cantidadPantallas];                                    //Estos parámetros corresponden a (fuenteDelTexto, texto en la linea del archivo .txt
    this.textoDePantallas[0] = new Texto(fuenteTitulo, textos[0], 40, 200, 100, 400, 200);    //tamanio del texto, posX, posY, ancho de caja, alto de caja
    this.textoDePantallas[0].colorTx = color(203, 8, 8);
    this.textoDePantallas[1] = new Texto(fuenteHistoria, textos[1], 30, 500, 100, 250, 400);
    this.textoDePantallas[2] = new Texto(fuenteHistoria, textos[2], 30, 500, 100, 250, 400);
    this.textoDePantallas[3] = new Texto(fuenteHistoria, textos[3], 30, 100, 400, 500, 250);
    this.textoDePantallas[4] = new Texto(fuenteHistoria, textos[4], 30, 500, 100, 250, 400);
    this.textoDePantallas[5] = new Texto(fuenteHistoria, textos[5], 25, 450, 50, 300, 500);
    this.textoDePantallas[6] = new Texto(fuenteHistoria, textos[6], 30, 100, 450, 500, 250);
    this.textoDePantallas[7] = new Texto(fuenteHistoria, textos[7], 50, 250, 250, 300, 300);
    this.textoDePantallas[8] = new Texto(fuenteTitulo, textos[8], 70, 250, 250, 300, 300);
    this.textoDePantallas[8].colorTx = color(255);
    this.textoDePantallas[9] = new Texto(fuenteHistoria, textos[9], 21, 500, 50, 250, 600);
    this.textoDePantallas[10] = new Texto(fuenteHistoria, textos[10], 30, 75, 150, 300, 500);
    this.textoDePantallas[11] = new Texto(fuenteHistoria, textos[11], 30, 75, 150, 300, 500);
    this.textoDePantallas[12] = new Texto(fuenteHistoria, textos[12], 30, 500, 100, 250, 400);
    this.textoDePantallas[12].colorTx = color(255);
    this.textoDePantallas[13] = new Texto(fuenteHistoria, textos[13], 30, 500, 100, 250, 400);
    this.textoDePantallas[14] = new Texto(fuenteHistoria, textos[14], 22, 100, 400, 600, 400);
    this.textoDePantallas[15] = new Texto(fuenteHistoria, textos[15], 30, 100, 300, 600, 250);
    this.textoDePantallas[15].colorTx = color(255);
    this.textoDePantallas[16] = new Texto(fuenteHistoria, textos[16], 30, 100, 300, 600, 250);
    this.textoDePantallas[16].colorTx = color(255);
    this.textoDePantallas[17] = new Texto(fuenteHistoria, textos[17], 30, 100, 300, 600, 300);
    this.textoDePantallas[17].colorTx = color(255);
  }
  
  
  //Cargo todos los textos de los botones con un arreglo
  
  void cargarTextoDeBotones(){
    String fuenteBotones = "BodoniMTCondensed-Italic-48.vlw";
    int posXboton1 = 585;
    int posXboton2 = 410;
    int posYboton1y2 = 545;
    int tamanioTexto = 40;
    this.textoDeBotones = new Texto [this.cantidadDeBotones];
    this.textoDeBotones[0] = new Texto(fuenteBotones, "Comenzar", tamanioTexto, 170, height/2 + 100, 175, 65); 
    this.textoDeBotones[1] = new Texto(fuenteBotones, "Créditos", tamanioTexto, 425, height/2 + 100, 175, 65);
    this.textoDeBotones[2] = new Texto(fuenteBotones, "Continuar", tamanioTexto, posXboton1, posYboton1y2, 175, 65);
    this.textoDeBotones[3] = new Texto(fuenteBotones, "Continuar", tamanioTexto, posXboton1, posYboton1y2, 175, 65);
    this.textoDeBotones[4] = new Texto(fuenteBotones, "Continuar", tamanioTexto, posXboton1, posYboton1y2, 175, 65);
    this.textoDeBotones[5] = new Texto(fuenteBotones, "Ir por comida", tamanioTexto, posXboton2, posYboton1y2, 175, 65);
    this.textoDeBotones[6] = new Texto(fuenteBotones, "Esperar a papá", tamanioTexto, posXboton1, posYboton1y2, 175, 65);
    this.textoDeBotones[7] = new Texto(fuenteBotones, "Entrar a la casa", 28, posXboton2, posYboton1y2, 160, 65);
    this.textoDeBotones[8] = new Texto(fuenteBotones, "Seguir por el bosque", 28, posXboton1, posYboton1y2, 160, 65);
    this.textoDeBotones[9] = new Texto(fuenteBotones, "Continuar", tamanioTexto, posXboton1, posYboton1y2, 175, 65);
    this.textoDeBotones[10] = new Texto(fuenteBotones, "Comenzar otra vez", 28, posXboton1, posYboton1y2, 160, 65);
    this.textoDeBotones[11] = new Texto(fuenteBotones, "Volver", tamanioTexto, posXboton1, posYboton1y2, 175, 65);
    this.textoDeBotones[12] = new Texto(fuenteBotones, "Reventar a Hansel", 28, posXboton2, posYboton1y2, 160, 65);
    this.textoDeBotones[13] = new Texto(fuenteBotones, "Desobedecer a la bruja", 28, posXboton1, posYboton1y2, 160, 65);
    this.textoDeBotones[14] = new Texto(fuenteBotones, "Continuar", tamanioTexto, posXboton1, posYboton1y2, 175, 65);
    this.textoDeBotones[15] = new Texto(fuenteBotones, "Tirar a la bruja adentro del horno", 25, posXboton2, posYboton1y2, 160, 65); 
    this.textoDeBotones[16] = new Texto(fuenteBotones, "No hacer nada", tamanioTexto, posXboton1, posYboton1y2, 175, 65);   
    this.textoDeBotones[17] = new Texto(fuenteBotones, "Cerrar la puerta del horno", 28, posXboton2, posYboton1y2, 160, 65);   
    this.textoDeBotones[18] = new Texto(fuenteBotones, "Correr sin mirar atrás", 28, posXboton1, posYboton1y2, 160, 65);   
    this.textoDeBotones[19] = new Texto(fuenteBotones, "Continuar", tamanioTexto, posXboton1, posYboton1y2, 175, 65);   
    this.textoDeBotones[20] = new Texto(fuenteBotones, "Volver a la casa", 28, posXboton2, posYboton1y2, 160, 65);   
    this.textoDeBotones[21] = new Texto(fuenteBotones, "Seguir por el bosque", 28, posXboton1, posYboton1y2, 160, 65);   
    this.textoDeBotones[22] = new Texto(fuenteBotones, "Continuar", tamanioTexto, posXboton1, posYboton1y2, 175, 65);   
    this.textoDeBotones[23] = new Texto(fuenteBotones, "Quedarse", tamanioTexto, posXboton2, posYboton1y2, 175, 65);   
    this.textoDeBotones[24] = new Texto(fuenteBotones, "Irse y jamás volver", 28, posXboton1, posYboton1y2, 160, 65);   
    this.textoDeBotones[25] = new Texto(fuenteBotones, "Terminar", tamanioTexto, posXboton1, posYboton1y2, 175, 65);   
  }
  
  
  //Cargo los botones con un arreglo
  void cargarBotones(){
    cargarTextoDeBotones();
    this.botones = new Boton[cantidadDeBotones];
    this.botones[0] = new Boton(this.textoDeBotones[0], 1, 0);  //El obj botón recibe como parámetros (Texto del boton, la pantalla a ir, y el número de boton)
    this.botones[1] = new Boton(this.textoDeBotones[1], -1, 1); //tiene -1 porque no lleva a ninguna pantalla, sino que ejecuta los créditos
    this.botones[2] = new Boton(this.textoDeBotones[2], 2, 2);
    this.botones[3] = new Boton(this.textoDeBotones[3], 3, 3);
    this.botones[4] = new Boton(this.textoDeBotones[4], 4, 4);
    this.botones[5] = new Boton(this.textoDeBotones[5], 5, 5);
    this.botones[6] = new Boton(this.textoDeBotones[6], 6, 6);
    this.botones[7] = new Boton(this.textoDeBotones[7], 9, 7);
    this.botones[8] = new Boton(this.textoDeBotones[8], 6, 8);
    this.botones[9] = new Boton(this.textoDeBotones[9], 7, 9);
    this.botones[10] = new Boton(this.textoDeBotones[10], 0, 10);
    this.botones[11] = new Boton(this.textoDeBotones[11], 0, 11);
    this.botones[12] = new Boton(this.textoDeBotones[12], 10, 12);
    this.botones[13] = new Boton(this.textoDeBotones[13], 11, 13);
    this.botones[14] = new Boton(this.textoDeBotones[14], 7, 14);
    this.botones[15] = new Boton(this.textoDeBotones[15], 12, 15);
    this.botones[16] = new Boton(this.textoDeBotones[16], 13, 16);
    this.botones[17] = new Boton(this.textoDeBotones[17], -1, 17);  //tiene -1 porque no lleva a ninguna pantalla, sino que ejecuta el juego
    this.botones[18] = new Boton(this.textoDeBotones[18], 13, 18);
    this.botones[19] = new Boton(this.textoDeBotones[19], 7, 19);
    this.botones[20] = new Boton(this.textoDeBotones[20], 16, 20);
    this.botones[21] = new Boton(this.textoDeBotones[21], 15, 21);
    this.botones[22] = new Boton(this.textoDeBotones[22], 7, 22);
    this.botones[23] = new Boton(this.textoDeBotones[23], 17, 23);
    this.botones[24] = new Boton(this.textoDeBotones[24], 15, 24);
    this.botones[25] = new Boton(this.textoDeBotones[25], 8, 25);
    asociarBotonesAPantallas();
  }
  
 //Asocio los botones a las pantallas (O sea, distingo la cantidad de botones que tiene cada pantalla, pudiendo tener 2 botones o 1)
 
  void asociarBotonesAPantallas(){
    this.botonesDePantallas = new Boton[cantidadPantallas][2];
    
    this.botonesDePantallas[0][0] = this.botones[0];
    this.botonesDePantallas[0][1] = this.botones[1];
    
    this.botonesDePantallas[1][0] = this.botones[2];
    this.botonesDePantallas[1][1] = null;
    
    this.botonesDePantallas[2][0] = this.botones[3];
    this.botonesDePantallas[2][1] = null;
    
    this.botonesDePantallas[3][0] = this.botones[4];
    this.botonesDePantallas[3][1] = null;
    
    this.botonesDePantallas[4][0] = this.botones[5];
    this.botonesDePantallas[4][1] = this.botones[6];    
    
    this.botonesDePantallas[5][0] = this.botones[7];
    this.botonesDePantallas[5][1] = this.botones[8];
        
    this.botonesDePantallas[6][0] = this.botones[9];
    this.botonesDePantallas[6][1] = null;
        
    this.botonesDePantallas[7][0] = this.botones[10];
    this.botonesDePantallas[7][1] = null;
        
    this.botonesDePantallas[8][0] = this.botones[11];
    this.botonesDePantallas[8][1] = null;
        
    this.botonesDePantallas[9][0] = this.botones[12];
    this.botonesDePantallas[9][1] = this.botones[13];
        
    this.botonesDePantallas[10][0] = this.botones[14];
    this.botonesDePantallas[10][1] = null;
        
    this.botonesDePantallas[11][0] = this.botones[15];
    this.botonesDePantallas[11][1] = this.botones[16];
        
    this.botonesDePantallas[12][0] = this.botones[17];
    this.botonesDePantallas[12][1] = this.botones[18];
        
    this.botonesDePantallas[13][0] = this.botones[19];
    this.botonesDePantallas[13][1] = null;
        
    this.botonesDePantallas[14][0] = this.botones[20];
    this.botonesDePantallas[14][1] = this.botones[21];
        
    this.botonesDePantallas[15][0] = this.botones[22];
    this.botonesDePantallas[15][1] = null;
        
    this.botonesDePantallas[16][0] = this.botones[23];
    this.botonesDePantallas[16][1] = this.botones[24];
    
    this.botonesDePantallas[17][0] = this.botones[25];
    this.botonesDePantallas[17][1] = null;    
  }
  
  void mouseClicked(){
    if(this.juego.activo){                                              //si el juego se está ejecutando
      juego.mouseClicked();                                             //chequea si el boton del juego está siendo presionado
    }else{ 
      int pantallaAIr;
      if(this.mostrarCreditos){                                        //si estoy en Creditos
        pantallaAIr = this.creditos.botonVolver.mouseClicked();        //se chequea si el boton de creditos fue presionado
      }else{
        pantallaAIr = pantallaActual.mouseClicked();                   //si el valor de pantallaAIr es -1 (significa que no se clickeo ningun boton)
      }
      if(pantallaAIr != -1){                                          //si el valor de pantallaAIr es distinto de -1 (se clickeo algun boton)
        this.pantallaActual = this.pantallas[pantallaAIr];            // cambia el valor de la variable pantallaActual
      }
    }
  }
}
