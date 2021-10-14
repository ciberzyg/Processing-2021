boolean activar;

void setup(){
  
  size(400, 400);
  background(255);
  
  strokeWeight(3);
  stroke(130, 60, 130);
  activar = false;
  
}

void draw(){
  
  if(activar == true){
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
  
}

void mousePressed(){
  
  activar = true;
  
}

void mouseReleased(){
  
  activar = false;
  
}
