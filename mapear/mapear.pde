float posX, ang, col1, col2;


void setup(){
  size(400, 400);
  noStroke();
  posX = 150;
}

void draw() {
  background(255);
  
  if(mouseX > 120 && mouseX < 280 && mouseY > 220 && mouseY < 380){
    
    posX = map(mouseX, 120, 280, -70, 470);
    col1 = map(mouseY, 220, 380, 0, 255 );
    col2 = 255 - col1;
    ang = map(mouseY, 220, 380, 0, 360);
    
  }
  
  fill(col1,0, col1);
  rect(120, 220, 160, 160);
  
  pushMatrix();
  translate(posX, 100);
  rotate(radians(ang));
  fill(col2, col2, 0);
  rect(-65, -65 , 130, 130);
  popMatrix();
  
}
