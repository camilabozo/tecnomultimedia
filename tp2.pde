import processing.sound.*;
PFont singPainterFont;
PFont helveticaLTFont;
PFont margethaFont;
PImage fondo;
int posX = 600;
int posY = 650;

void setup(){
   size(1200,600);
   fondo = loadImage ("fondo2.jpg");
   SoundFile sonido; 
   sonido = new SoundFile(this, "theSetup.wav");
   sonido.play(); 

   helveticaLTFont = createFont ("Helvetica LT 67 Medium Condensed.ttf",15);
   singPainterFont = createFont("SignPainter HouseScript Regular.ttf",20);
   margethaFont = createFont("Margetha.otf",50);
  
}

void draw(){
   image (fondo,0,0,1200,600);
   
   textAlign(CENTER);
   fill(255);
   
   textFont(helveticaLTFont,30);
   text("ROCKSTAR NORTH",posX,posY);
  
   textFont(singPainterFont);
   text("Productor y Diseñador del Juego",posX,posY+100);
   
   textFont(helveticaLTFont);
   text("Leslie Benzies",posX,posY+120);
   
   textFont(singPainterFont);
   text("Productor de Arte",posX,posY+200);
   
   textFont(helveticaLTFont);
   text("Aaron Garbut",posX,posY+220);
   
   textFont(singPainterFont);
   text("Director Técnico",posX,posY+300);
   
   textFont(helveticaLTFont);
   text("Adam Fowler",posX,posY+320);
   
   textFont(singPainterFont);
   text("Escrito Por",posX,posY+400); 
   
   textFont(helveticaLTFont);
   text("Dan Houser & \n Rupert Humphries",posX,posY+420);
   
   textFont(singPainterFont);
   text("Coproductor y Diseñador del Juego",posX,posY+500);
   
   textFont(helveticaLTFont);
   text("Imran Sarwar",posX,posY+520);
   
   textFont(singPainterFont);
   text("Protagonistas",posX,posY+600);
   
   textFont(helveticaLTFont);
   text("Shawn Fonteno como Franklin \n Ned Luke como Michael \n Steven Ogg como Trevor",posX,posY+620);
   
   textFont(singPainterFont);
   text("Estructuras de Personajes y Arte Técnico Senior",posX,posY+720);
   
   textFont(helveticaLTFont);
   text("Erik Brear",posX,posY+740);
   
   textFont(singPainterFont);
   text("Estructuras de Personajes",posX,posY+840);
   
   textFont(helveticaLTFont);
   text("Matt Rennie \n Stewart Wright \n Nicolas Malover",posX,posY+860);
   
   textFont(singPainterFont);
   text("Lider de Animación de Cinemáticas",posX,posY+960);
   
   textFont(helveticaLTFont);
   text("Roz Galloway",posX,posY+980);
   
   textFont(singPainterFont);
   text("Animación de Cinemáticas",posX,posY+1060);
   
   textFont(helveticaLTFont);
   text("Alex Cartwright \n Geoffrey Fermin \n Jenny Arnold \n Kristian Petersson \n Marcos Duran \n Matt Rochester \n Michael Mangus",posX,posY+1080);
   
   textFont(singPainterFont);
   text("Director Musical",posX,posY+1280); 
   
   textFont(helveticaLTFont);
   text("Craig Conner",posX,posY+1300); 
   
   textFont(singPainterFont);
   text("Director de Sonido",posX,posY+1380); 
   
   textFont(helveticaLTFont);
   text("Matthew Smith",posX,posY+1400);    
   
   textFont(singPainterFont);
   text("Ingenieros de Grabación",posX,posY+1480); 
   
   textFont(helveticaLTFont);
   text("Michael Harris \n Valente Torrez",posX,posY+1500);
   
   textFont(singPainterFont);
   text("Estudio",posX,posY+1580);
   
   textFont(helveticaLTFont);
   text("Vox Recording Studios",posX,posY+1600);   
   
   textFont(helveticaLTFont,13);
   text("Permisos musicales a cargo de Deborah Mannis-Gardner/DMG Clearances, Inc.\n Representación legal musical de Jeff Levy, de Ritholz Levy Sanders Chidekel & Fields, LLP.",posX,posY+1680);   
   
   textFont(singPainterFont);
   text("Dedicado a la memoria de Chris 'Eddie' Edwards, una enorme pérdida para la familia Rockstar",posX,posY+1900);
   
   textFont(margethaFont);
   text("Camila Bozo", posX, posY+2500);
  
   textFont(helveticaLTFont);
   text("Tecnología Multimedial I: TPN°2 Animación de Créditos",posX,posY+2550); 
 
   fill(0);
   textFont(margethaFont,30);
   text("Haz click para finalizar",posX,posY+2750);
   
   posY = posY - 2;  
}

void mouseClicked(){
  
   background(0);
   fill(255);
   textFont(margethaFont,60); 
   text("The End",width/2,height/2);
   exit();
}
