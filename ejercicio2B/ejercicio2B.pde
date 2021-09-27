int fondo, trasCirculo, tamCirculo, posTexto, angulo; 
PFont font; 
String a;

void setup(){
size(400,400);
font = loadFont("Monospaced-48.vlw");
a= "Hola";
textSize(60);
noStroke();
fondo=255;
tamCirculo = 255;
trasCirculo = 255;
posTexto = 0;
angulo = 0;
}

void draw(){

  background(fondo);

  noStroke();
  fill(255, 255, 0);
  rect(20, 20, 80, 80);
  rect(300, 20, 80, 80);
  rect(20, 300, 80, 80);
  rect(300, 300, 80, 80);
  
  tamCirculo = tamCirculo - 4;
  trasCirculo = trasCirculo - 4;
  posTexto += 4;
  
  if(tamCirculo < 0){
    
    tamCirculo = 255;
    
  }
  
  if(trasCirculo < 0){
    
    trasCirculo = 255;
    
  }
  
  if(posTexto > 400){
    
   posTexto = 0;
    
  }
  
  if(mouseX > 20 && mouseX < 100 && mouseY > 20 && mouseY < 100){
    
    fondo = 0;
    
  } else if(mouseX > 300 && mouseX < 380 && mouseY > 20 && mouseY < 100){
    
    fill(255, 0, 0, trasCirculo);
    ellipse(200, 200, tamCirculo, tamCirculo);
    
  } else if(mouseX > 20 && mouseX < 100 && mouseY > 300 && mouseY < 380){

    fill(0);
    text(a, posTexto, 200);
    
  }else if(mouseX > 300 && mouseX < 380 && mouseY > 300 && mouseY < 380){
    
    pushMatrix();
  
    translate(200, 200);
    rotate(radians(angulo));
    noStroke();
    fill(0, 255, 0);
    rect(-100, -100, 200, 200);
    angulo += 2;
    
    popMatrix();
  
    
  }else {
    
    fondo = 255;
    
  }
  

}
