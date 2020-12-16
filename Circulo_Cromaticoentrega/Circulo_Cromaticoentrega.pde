void setup(){
    size(700,700);
    background(255); 
    
    strokeWeight(5);
    noFill();
    triangle(350,265,430,400,265,400);
    triangle(265,310,430,310,350,445);
    strokeWeight(2);
    triangle(250,350,395,280,395,430);    
    triangle(300,280,445,350,300,430);
    
    ellipseMode(CENTER);  
    noStroke();
    fill(255,255,0);
    ellipse(350,85,100,100); //ellipse 1
    ellipse(350,200,50,50); //ellipse 13
    ellipse(350,265,25,25); //ellipse 25
   
    fill(252,211,0); 
    ellipse(490,140,100,100); //ellipse 2
    ellipse(430,225,50,50); //ellipse 14
    ellipse(395,280,25,25); //ellipse 26
    
    fill(255,128,0);
    ellipse(590,225,100,100); //ellipse 3
    ellipse(490,275,50,50); //ellipse 15
    ellipse(430,310,25,25); //ellipse 27
    
    fill(252,80,0);
    ellipse(625,350,100,100); //ellipse 4
    ellipse(515,350,50,50);  //ellipse 16
    ellipse(445,350,25,25); //ellipse 28
    
    fill(255,0,0);
    ellipse(590,485,100,100); //ellipse 5
    ellipse(490,430,50,50); //ellipse 17
    ellipse(430,400,25,25); //ellipse 29
    
    fill(146,43,62);
    ellipse(490,590,100,100); //ellipse 6
    ellipse(430,490,50,50); //ellipse 18
    ellipse(395,430,25,25); //ellipse 30
    
    fill(87,35,100);
    ellipse(350,625,100,100); //ellipse 7
    ellipse(350,515,50,50); //ellipse 19
    ellipse(350,445,25,25); //ellipse 31
    
    fill(134,0,252);
    ellipse(210,590,100,100); //ellipse 8
    ellipse(270,490,50,50); //ellipse 20
    ellipse(300,430,25,25); //ellipse 32
    
    fill(0,0,255);
    ellipse(100,485,100,100); //ellipse 9
    ellipse(210,439,50,50); //ellipse 21
    ellipse(265,400,25,25); //ellipse 33
    
    fill(0,212,252);
    ellipse(70,350,100,100); //ellipse 10
    ellipse(180,350,50,50); //ellipse 22
    ellipse(250,350,25,25); //ellipse 34
    
    fill(0,255,0);
    ellipse(100,225,100,100); //ellipse 11
    ellipse(210,275,50,50); //ellipse 23
    ellipse(265,310,25,25); //ellipse 35
    
    fill(190,255,0);
    ellipse(210,140,100,100); //ellipse 12
    ellipse(270,225,50,50); //ellipse 24
    ellipse(300,280,25,25); //ellipse 36
       
}
