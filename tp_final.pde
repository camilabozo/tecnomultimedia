Aventura aventura;

void setup(){
  size(800, 600);
  aventura = new Aventura();
  textAlign(CENTER);
  imageMode(CENTER);
}

void draw(){
  aventura.dibujate();
}

void mouseClicked(){
  aventura.mouseClicked();
}
