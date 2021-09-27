float esc;

void setup(){
  size(400,400);
  esc = 2;
}


void draw(){
  background(200);
  
  pushMatrix(); 
  stroke(0);
  rect(20, 20, 50, 30);
  
  scale(esc); 
  
  if (esc < 9) {
    esc += 0.02;
  }
  rect(20, 20, 50, 30);
  popMatrix(); 

  pushMatrix(); 
  translate(200, 200); 
  rect(0, 0, 150, 30);
  rotate(radians(-15));

  rect(0, 0, 150, 30);
        stroke(0,0,255);
        line(0,0, 180,0);
        line(0,0, 0, 130);
        ellipse(0,0,6,6);
        stroke(0); 

  rotate(radians(-30));
  rect(0, 0, 150, 30); 
        stroke(255,0,0);
        line(0,0, 180,0);
        line(0,0, 0, 130);
        ellipse(0,0,6,6);
        stroke(0);
  popMatrix();


  pushMatrix(); 
  translate(100, 300);
  rotate(PI/8);
  rect(-50, -50, 100, 100);  
        stroke(255,0,0);
        line(0,0, 80,0);
        line(0,0, 0,80);
        ellipse(0,0,6,6);
  popMatrix();
}

void mousePressed() {
  esc = 2;
}
