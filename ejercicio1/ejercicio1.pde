PImage foto;

void setup(){
  size(400, 400);
  foto = loadImage("canales.jpg");
}

void draw(){
  
  background(255);
  image(foto, 50, 50);
  
  fill(200);
  noStroke();
  rect(0, 0, 50, 50);
  
  fill(200);
  noStroke();
  rect(350, 0, 50, 50);
  
  fill(200);
  noStroke();
  rect(0, 350, 50, 50);
  
  fill(200);
  noStroke();
  rect(350, 350, 50, 50);
  
  noFill();
  stroke(255, 0, 0);
  strokeWeight(2);
  triangle(100, 0, 300, 0, 200, 150);
  
  noFill();
  stroke(255, 0, 0);
  strokeWeight(2);
  triangle(100, 398, 300, 398, 200, 250);
  
  noFill();
  stroke(255, 0, 0);
  strokeWeight(2);
  ellipse(50, 200, 100, 100);
  
  noFill();
  stroke(255, 0, 0);
  strokeWeight(2);
  ellipse(350, 200, 100, 100);
  
  fill(255);
  stroke(0);
  strokeWeight(1);
  ellipse(100, 200, 100, 50);
  
  fill(255);
  ellipse(300, 200, 100, 50);
  
  
  noFill();
  ellipse(50, 200, 50, 50);
  
  noFill();
  ellipse(350, 200, 50, 50);
  
  fill(255, 246, 0, 175);
  noStroke();
  ellipse(200, 200, 100, 100);
  
  fill(255);
  noStroke();
  beginShape();
  vertex(195, 215);
  vertex(200, 240);
  vertex(210, 240);
  vertex(205, 215);
  vertex(230, 190);
  vertex(230, 180);
  vertex(180, 165);
  vertex(180, 175);
  vertex(220, 190);
  endShape(CLOSE);
  
}
