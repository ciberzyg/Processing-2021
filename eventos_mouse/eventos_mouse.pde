float x;
color [] listaColores = new color [4];
int numColor;
int gris;
float lado;
int sentido;

void setup(){
  size(400, 400);
  noStroke();
  
  x = 50;
  
  listaColores[0] = color(30, 220, 220);
  listaColores[1] = color(170, 70, 220);
  listaColores[2] = color(255, 180, 30);
  listaColores[3] = color(150, 150, 150);
  
  numColor = 0;
  gris = 150;
  lado = 60;
  
  sentido = 1;
  
}

void draw(){
  background(255);
  fill(0);
  rect(170, 120, 60, 60);
  
  if(mouseX > 170 && mouseX < 230 && mouseY > 120 && mouseY < 180) {
    fill(listaColores[numColor]);
    ellipse(x, 50, 80, 80);
  }
  
  fill(gris);
  rect(width/2-lado/2, 300 - lado/2, lado, lado);
  
  if (mouseX > width/2-lado/2 && mouseX < width/2+lado/2 &&
                mouseY > 300 - lado/2 && mouseY < 300+lado/2){
                  
      gris += 3 * sentido;
      
      if (gris > 240 || gris < 10) {
        
        sentido *= -1;
        
      }
                  
  }
  
}

void mousePressed(){
  
  if(mouseX > 170 && mouseX < 230 && mouseY > 120 && mouseY < 180) {
    
    numColor = int(random(listaColores.length));
    
  }
  
}

void mouseReleased(){
  
  if(mouseX > 170 && mouseX < 230 && mouseY > 120 && mouseY < 180) {
    
    x = random(40, 360);
    
  } else if(mouseX > width/2-lado/2 && mouseX < width/2+lado/2 &&
                    mouseY > 300 - lado/2 && mouseY < 300+lado/2) {
    
    lado = random(20, 200);
    
  }
  
}
