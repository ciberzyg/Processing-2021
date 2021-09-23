PFont font;
int fondo;
String a;
int lockV;

void setup(){
  size (500, 500);
  fondo = 50;
  font = loadFont("Monospaced-48.vlw");
  textFont(font, 50);
  a = "Buenas noches";
  lockV = 0;
  
}

void draw(){
  background(fondo);
  
  lockV += 2;
  
  if(lockV > height) {
    
    lockV = 0;
    
  }
  
  noStroke();
  fill(255, 255, 0);
  rect(250, 200, 60, 60);
  rect(20, lockV, 60, 60);
  
  if(mouseX > 20 && mouseX < 80 && mouseY > lockV && mouseY < lockV + 60){
    
    a = "Buenos dias";
    fondo = 240;
    
  } else if(mouseX > 250 && mouseX < 310 && mouseY > 200 && mouseY < 260){
    
    a = "Buenas tardes";
    fondo = 120;
    
  } else {
    a = "Buenas noches";
    fondo = 50;
  }
  
  fill(250, 100, 250);
  
  
  text(a, 100, height - 30);
}
