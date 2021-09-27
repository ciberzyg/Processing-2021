float angulo, angulo2, esc;
int lockH;

void setup(){
  size (800, 600);
  angulo = 0;
  angulo2 = 0;
  lockH = 0;
  esc = 1; 
}

void draw(){
  background(0);
  
  pushMatrix();
  
  translate(lockH, 250);
  rotate(radians(angulo));
  scale(esc);
  angulo += 2;
  lockH +=2;
  if(lockH > width){
    
    lockH = 0;
    
  }
  esc += 0.01;
  noStroke();
  fill(255, 0, 0);
  rect(-45, -45, 90, 90);
  
  popMatrix();
  
  pushMatrix();
  
  translate(width/2, 350);
  rotate(radians(angulo2));
  noStroke();
  fill(255);
  rect(-60, -60, 120, 120);
  angulo2 -= 5;
  
  popMatrix();
  
}

void mousePressed(){

  esc = 1;

}
