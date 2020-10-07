import processing.sound.*;
int posX; int posY = 700; //variables que utilizaré para los créditos
int cantidadDeImagenes = 19;
int pantallaActual = 1; 
PImage [] imagenes = new PImage [cantidadDeImagenes];
int [] pantallasDeUnBoton = {0, 2, 3, 4, 7, 9, 11, 14, 16, 18};
PFont fuenteCreditos;

void setup(){
  size(800, 600);
  cargarImagenes();
  fuenteCreditos = loadFont("MonotypeCorsiva-48.vlw");
  SoundFile terror; 
  terror = new SoundFile(this, "terror.mp3");
  terror.play(); 
  surface.setResizable(true);
}

void draw(){
  image(imagenes[pantallaActual],0,0,width,height);
  mostrarCreditos();
  chequearCursor();
}

void mouseClicked(){
  cambioDePantallas();
}
