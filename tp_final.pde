//import processing.sound.*;
Aventura aventura;                //Declaro mi aventura

void setup(){
  size(800, 600);
  aventura = new Aventura(this);  //Instancio mi aventura
  surface.setResizable(true);
}

void draw(){
  background(255);
  aventura.dibujate();
}

void mouseClicked(){
  aventura.mouseClicked();
}
