class Aventura{
  Pantalla pantallaActual;
  int cantidadPantallas;
  int cantidadDeBotones;
  String[] textos;
  PImage[] imagenes;
  Pantalla[] pantallas;
  Texto[] textoDeBotones; 
  Texto[] textoDePantallas; 
  Boton[] botones;
  Boton[][] botonesDePantallas;
  String fuenteBotones = "BodoniMTCondensed-Italic-48.vlw";
  String fuenteHistoria = "TwCenMT-Condensed-48.vlw";
  String fuenteTitulo = "VinerHandITC-48.vlw";
  String fuenteCreditos = "BodoniMTCondensed-Bold-48.vlw";
  Creditos creditos;
  int posYcreditos = 400;
  
  Aventura(){
    this.cantidadPantallas = 19;
    this.cantidadDeBotones = 27;
    cargarTextos();  
    cargarBotones();
    cargarPantallas();
    this.pantallaActual = this.pantallas[1];
  }
  
  void dibujate(){
    background(255);
    this.pantallaActual.dibujate();        
    if(this.pantallaActual == this.pantallas[0]){
      this.pantallaActual.historia.posY--;
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
    
  void cargarTextos(){
    //TEXTOS DE HISTORIA (CORNER)
    this.textos = loadStrings("textoDePantallas.txt");  
    this.textoDePantallas = new Texto [cantidadPantallas];
    this.textoDePantallas[0] = new Texto(fuenteCreditos, textos[0], 50, 250, 700, 300, 800);         //Estos parámetros corresponden a (fuenteDelTexto, texto en la linea
    this.textoDePantallas[0].colorTx = color(255);                                                   //en el txt, tamanio del texto, psX, posY, ancho de caja, alto de caja);
    this.textoDePantallas[1] = new Texto(fuenteTitulo, textos[1], 40, 200, 100, 400, 200);
    this.textoDePantallas[1].colorTx = color(203, 8, 8);
    this.textoDePantallas[2] = new Texto(fuenteHistoria, textos[2], 30, 500, 100, 250, 400);
    this.textoDePantallas[3] = new Texto(fuenteHistoria, textos[3], 30, 500, 100, 250, 400);
    this.textoDePantallas[4] = new Texto(fuenteHistoria, textos[4], 30, 100, 400, 500, 250);
    this.textoDePantallas[5] = new Texto(fuenteHistoria, textos[5], 30, 500, 100, 250, 400);
    this.textoDePantallas[6] = new Texto(fuenteHistoria, textos[6], 25, 450, 50, 300, 500);
    this.textoDePantallas[7] = new Texto(fuenteHistoria, textos[7], 30, 100, 450, 500, 250);
    this.textoDePantallas[8] = new Texto(fuenteHistoria, textos[8], 50, 250, 250, 300, 300);
    this.textoDePantallas[9] = new Texto(fuenteTitulo, textos[9], 70, 250, 250, 300, 300);
    this.textoDePantallas[9].colorTx = color(255);
    this.textoDePantallas[10] = new Texto(fuenteHistoria, textos[10], 21, 500, 50, 250, 600);
    this.textoDePantallas[11] = new Texto(fuenteHistoria, textos[11], 30, 75, 150, 300, 500);
    this.textoDePantallas[12] = new Texto(fuenteHistoria, textos[12], 30, 75, 150, 300, 500);
    this.textoDePantallas[13] = new Texto(fuenteHistoria, textos[13], 30, 500, 100, 250, 400);
    this.textoDePantallas[13].colorTx = color(255);
    this.textoDePantallas[14] = new Texto(fuenteHistoria, textos[14], 30, 500, 100, 250, 400);
    this.textoDePantallas[15] = new Texto(fuenteHistoria, textos[15], 22, 100, 400, 600, 400);
    this.textoDePantallas[16] = new Texto(fuenteHistoria, textos[16], 30, 100, 300, 600, 250);
    this.textoDePantallas[17] = new Texto(fuenteHistoria, textos[17], 30, 100, 300, 600, 250);
    this.textoDePantallas[17].colorTx = color(255);
    this.textoDePantallas[18] = new Texto(fuenteHistoria, textos[18], 30, 100, 300, 600, 300);
    this.textoDePantallas[18].colorTx = color(255);
  }
  
  void cargarTextoDeBotones(){
    int posXboton1 = 585;
    int posXboton2 = 410;
    int posYboton1y2 = 545;
    int tamanioTexto = 40;
    this.textoDeBotones = new Texto [this.cantidadDeBotones];
    this.textoDeBotones[0] = new Texto(fuenteBotones, "Volver", tamanioTexto, posXboton1, posYboton1y2, 175, 65);
    this.textoDeBotones[1] = new Texto(fuenteBotones, "Comenzar", tamanioTexto, 170, height/2 + 100, 175, 65);
    this.textoDeBotones[2] = new Texto(fuenteBotones, "Créditos", tamanioTexto, 425, height/2 + 100, 175, 65);
    this.textoDeBotones[3] = new Texto(fuenteBotones, "Continuar", tamanioTexto, posXboton1, posYboton1y2, 175, 65);
    this.textoDeBotones[4] = new Texto(fuenteBotones, "Continuar", tamanioTexto, posXboton1, posYboton1y2, 175, 65);
    this.textoDeBotones[5] = new Texto(fuenteBotones, "Continuar", tamanioTexto, posXboton1, posYboton1y2, 175, 65);
    this.textoDeBotones[6] = new Texto(fuenteBotones, "Ir por comida", tamanioTexto, posXboton2, posYboton1y2, 175, 65);
    this.textoDeBotones[7] = new Texto(fuenteBotones, "Esperar a papá", tamanioTexto, posXboton1, posYboton1y2, 175, 65);
    this.textoDeBotones[8] = new Texto(fuenteBotones, "Entrar a la casa", 28, posXboton2, posYboton1y2, 160, 65);
    this.textoDeBotones[9] = new Texto(fuenteBotones, "Seguir por el bosque", 28, posXboton1, posYboton1y2, 160, 65);
    this.textoDeBotones[10] = new Texto(fuenteBotones, "Continuar", tamanioTexto, posXboton1, posYboton1y2, 175, 65);
    this.textoDeBotones[11] = new Texto(fuenteBotones, "Comenzar otra vez", 28, posXboton1, posYboton1y2, 160, 65);
    this.textoDeBotones[12] = new Texto(fuenteBotones, "Volver", tamanioTexto, posXboton1, posYboton1y2, 175, 65);
    this.textoDeBotones[13] = new Texto(fuenteBotones, "Reventar a Hansel", 28, posXboton2, posYboton1y2, 160, 65);
    this.textoDeBotones[14] = new Texto(fuenteBotones, "Desobedecer a la bruja", 28, posXboton1, posYboton1y2, 160, 65);
    this.textoDeBotones[15] = new Texto(fuenteBotones, "Continuar", tamanioTexto, posXboton1, posYboton1y2, 175, 65);
    this.textoDeBotones[16] = new Texto(fuenteBotones, "Tirar a la bruja adentro del horno", 25, posXboton2, posYboton1y2, 160, 65); 
    this.textoDeBotones[17] = new Texto(fuenteBotones, "No hacer nada", tamanioTexto, posXboton1, posYboton1y2, 175, 65);   
    this.textoDeBotones[18] = new Texto(fuenteBotones, "Cerrar la puerta del horno", 28, posXboton2, posYboton1y2, 160, 65);   
    this.textoDeBotones[19] = new Texto(fuenteBotones, "Correr sin mirar atrás", 28, posXboton1, posYboton1y2, 160, 65);   
    this.textoDeBotones[20] = new Texto(fuenteBotones, "Continuar", tamanioTexto, posXboton1, posYboton1y2, 175, 65);   
    this.textoDeBotones[21] = new Texto(fuenteBotones, "Volver a la casa", 28, posXboton2, posYboton1y2, 160, 65);   
    this.textoDeBotones[22] = new Texto(fuenteBotones, "Seguir por el bosque", 28, posXboton1, posYboton1y2, 160, 65);   
    this.textoDeBotones[23] = new Texto(fuenteBotones, "Continuar", tamanioTexto, posXboton1, posYboton1y2, 175, 65);   
    this.textoDeBotones[24] = new Texto(fuenteBotones, "Quedarse", tamanioTexto, posXboton2, posYboton1y2, 175, 65);   
    this.textoDeBotones[25] = new Texto(fuenteBotones, "Irse y jamás volver", 28, posXboton1, posYboton1y2, 160, 65);   
    this.textoDeBotones[26] = new Texto(fuenteBotones, "Terminar", tamanioTexto, posXboton1, posYboton1y2, 175, 65);   
  }
  
  void cargarBotones(){
    cargarTextoDeBotones();
    this.botones = new Boton[cantidadDeBotones];
    this.botones[0] = new Boton(this.textoDeBotones[0], 1);
    this.botones[1] = new Boton(this.textoDeBotones[1], 2);
    this.botones[2] = new Boton(this.textoDeBotones[2], 0);
    this.botones[3] = new Boton(this.textoDeBotones[3], 3);
    this.botones[4] = new Boton(this.textoDeBotones[4], 4);
    this.botones[5] = new Boton(this.textoDeBotones[5], 5);
    this.botones[6] = new Boton(this.textoDeBotones[6], 6);
    this.botones[7] = new Boton(this.textoDeBotones[7], 7);
    this.botones[8] = new Boton(this.textoDeBotones[8], 10);
    this.botones[9] = new Boton(this.textoDeBotones[9], 7);
    this.botones[10] = new Boton(this.textoDeBotones[10], 8);
    this.botones[11] = new Boton(this.textoDeBotones[11], 1);
    this.botones[12] = new Boton(this.textoDeBotones[12], 1);
    this.botones[13] = new Boton(this.textoDeBotones[13], 11);
    this.botones[14] = new Boton(this.textoDeBotones[14], 12);
    this.botones[15] = new Boton(this.textoDeBotones[15], 8);
    this.botones[16] = new Boton(this.textoDeBotones[16], 13);
    this.botones[17] = new Boton(this.textoDeBotones[17], 14);
    this.botones[18] = new Boton(this.textoDeBotones[18], 15);
    this.botones[19] = new Boton(this.textoDeBotones[19], 14);
    this.botones[20] = new Boton(this.textoDeBotones[20], 8);
    this.botones[21] = new Boton(this.textoDeBotones[21], 17);
    this.botones[22] = new Boton(this.textoDeBotones[22], 16);
    this.botones[23] = new Boton(this.textoDeBotones[23], 8);
    this.botones[24] = new Boton(this.textoDeBotones[24], 18);
    this.botones[25] = new Boton(this.textoDeBotones[25], 16);
    this.botones[26] = new Boton(this.textoDeBotones[26], 9);
    asociarBotonesAPantallas();
  }
  
 
  
  void asociarBotonesAPantallas(){
    this.botonesDePantallas = new Boton[cantidadPantallas][2];
    this.botonesDePantallas[0][0] = this.botones[0];
    this.botonesDePantallas[0][1] = null;
    
    this.botonesDePantallas[1][0] = this.botones[1];
    this.botonesDePantallas[1][1] = this.botones[2];
    
    this.botonesDePantallas[2][0] = this.botones[3];
    this.botonesDePantallas[2][1] = null;
    
    this.botonesDePantallas[3][0] = this.botones[4];
    this.botonesDePantallas[3][1] = null;
    
    this.botonesDePantallas[4][0] = this.botones[5];
    this.botonesDePantallas[4][1] = null;
    
    this.botonesDePantallas[5][0] = this.botones[6];
    this.botonesDePantallas[5][1] = this.botones[7];    
    
    this.botonesDePantallas[6][0] = this.botones[8];
    this.botonesDePantallas[6][1] = this.botones[9];
        
    this.botonesDePantallas[7][0] = this.botones[10];
    this.botonesDePantallas[7][1] = null;
        
    this.botonesDePantallas[8][0] = this.botones[11];
    this.botonesDePantallas[8][1] = null;
        
    this.botonesDePantallas[9][0] = this.botones[12];
    this.botonesDePantallas[9][1] = null;
        
    this.botonesDePantallas[10][0] = this.botones[13];
    this.botonesDePantallas[10][1] = this.botones[14];
        
    this.botonesDePantallas[11][0] = this.botones[15];
    this.botonesDePantallas[11][1] = null;
        
    this.botonesDePantallas[12][0] = this.botones[16];
    this.botonesDePantallas[12][1] = this.botones[17];
        
    this.botonesDePantallas[13][0] = this.botones[18];
    this.botonesDePantallas[13][1] = this.botones[19];
        
    this.botonesDePantallas[14][0] = this.botones[20];
    this.botonesDePantallas[14][1] = null;
        
    this.botonesDePantallas[15][0] = this.botones[21];
    this.botonesDePantallas[15][1] = this.botones[22];
        
    this.botonesDePantallas[16][0] = this.botones[23];
    this.botonesDePantallas[16][1] = null;
        
    this.botonesDePantallas[17][0] = this.botones[24];
    this.botonesDePantallas[17][1] = this.botones[25];
    
    this.botonesDePantallas[18][0] = this.botones[26];
    this.botonesDePantallas[18][1] = null;    
  }
  
  void mouseClicked(){
    int pantallaAIr = pantallaActual.mouseClicked();  //si el valor de pantallaAIr es -1 (significa que no se clickeo ningun boton)
    if(pantallaAIr != -1){                            //si el valor de pantallaAIr es distinto de -1 (se clickeo algun boton)
      if(this.pantallaActual == this.pantallas[0]){   //si se clickeo en el boton volver de la pantalla de creditos
        this.pantallas[0].historia.posY = 700;        //se reinicia el valor de la posY del texto
      }
      this.pantallaActual = this.pantallas[pantallaAIr]; // cambia el valor de la variable pantallaActual
    }
  }
}
