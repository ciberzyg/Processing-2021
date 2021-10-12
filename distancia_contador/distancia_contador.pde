int fondo, contador;
PFont fuente;
float r;

void setup(){
  size(400, 400);
  ellipseMode(RADIUS);
  fondo = 0;
  contador = 0;
  fuente = loadFont("SansSerif-48.vlw");
}

void draw(){
   background(fondo);
   
   fill(255);
   noStroke();
   ellipse(width/2, height/2, r, r);
   
   if(r > 100){
     fondo = 100;
   } else {
     fondo = 0;
   }
   
   if(contador % 2 == 0){
     
     r = dist(width/2, height/2, mouseX, mouseY);
     stroke(255, 0, 0);
     
     fill(255, 0, 0);
     ellipse(mouseX, mouseY, 4, 4);
     ellipse(width/2, height/2, 4, 4);
     
     line(width/2, height/2, mouseX, mouseY);
   
   }
   
   textFont(fuente, 48);
   fill(0, 200, 100);
   text(contador, 20, 60);
}

void mousePressed(){
  
  contador++;
  
}
