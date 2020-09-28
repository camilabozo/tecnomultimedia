void mostrarCreditos(){
  if(pantallaActual == 0){
    fill(255);
    posX = width/2;
    textAlign(CENTER);
    textFont(fuenteCreditos, 45);
    text("Créditos", posX, posY);
    text("Autor: 'Los hermanos Grimm'", posX, posY + 100);
    text("Hansel & Gretel", posX, posY + 150);
    text("Modificaciones en la historia: \n Camila Ailén Bozo", posX, posY + 200);
    text("Tecnología Multimedial I: TP N°4 \n Aventura Gráfica", posX, posY + 350);
    posY = posY - 2;
  }
}
