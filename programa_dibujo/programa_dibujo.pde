boolean activar;

color rojo, verde, azul;

void setup(){
  
  size(400, 400);
  background(255);
  
  rojo = color(255, 0, 0);
  verde = color(0, 255, 0);
  azul = color(0, 0, 255);
  
  noStroke();
  fill(rojo);
  rect(0, 350, 50, 50);
  
  fill(verde);
  rect(50, 350, 50, 50);
  
  fill(azul);
  rect(100, 350, 50, 50);
  

  stroke(2);
  fill(255);
  rect(150, 350, 50, 50);
  
  
   strokeWeight(3);
  stroke(130, 60, 130);

  activar = false;
  
}

void draw(){
  
  if(activar == true){
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
  
    if(mouseX > 0 && mouseX < 50 && mouseY > 350 && mouseY < 400){
    
    strokeWeight(3);
    stroke(rojo);
    
  }
  
    if(mouseX > 50 && mouseX < 100 && mouseY > 350 && mouseY < 400){
    
    strokeWeight(3);
    stroke(verde);
    
  }
  
   if(mouseX > 100 && mouseX < 150 && mouseY > 350 && mouseY < 400){
    
    strokeWeight(3);
    stroke(azul);
    
  }
  
   if(mouseX > 150 && mouseX < 200 && mouseY > 350 && mouseY < 400){
    
    strokeWeight(10);
    stroke(255);
    
  }
  
  
}

void mousePressed(){
  
  activar = true;
  
}

void mouseReleased(){
  
  activar = false;
  
}
