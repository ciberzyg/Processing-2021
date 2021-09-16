int a, incre;

void setup() {
  size(500, 500);
  a = 0;
  incre = 4;
}

void draw(){
  
  background(255);
  
  fill(200, 20, 20);
  noStroke();
  ellipse(a, 250, 40, 40);
  
  a = a + incre;
  
  if(a > 500){
    a = 0;
  }
  
  fill(180);
  rect(20, 20, 40, 40);
  
}

void mousePressed(){
  
  println(mouseX);
  
  if(mouseX > 20 && mouseX < 61 && mouseY > 20 && mouseY < 61){
    incre = int(random(20));
  } else {
    
    incre = 0;
    
  }
  
  
  println(incre);
  
}
