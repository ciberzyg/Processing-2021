float posH, tam;

void setup(){
size(400,400);
smooth();
}

void draw(){
background(255);
fill(255);
stroke(1);
rectMode(CORNER);
rect(20,330,50,50);

// Escribir el código que falta

  if(mouseX > 20 && mouseX < 70 && mouseY > 330 && mouseY < 380){
    
    posH = map(mouseX, 20, 70, 0, 370);
    fill(0);
    noStroke();
    rectMode(CORNER);
    rect(0, 190, posH, 20);
    tam = map(mouseY, 330, 380, 0, 430 );
    rectMode(CENTER);
    rect(posH - 10, 200, 20, tam);
  
  }
} 
