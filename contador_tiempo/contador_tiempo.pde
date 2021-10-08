int contador;

void setup(){
  size(400, 400);
  contador = 0;
  frameRate(10);
}

void draw(){
  background(0);
  
  if(contador <= 30){
    fill(255, 0, 0);
    ellipse(200, 200, 100, 100);
  } else if (contador >30 && contador <=60){
    fill(0, 255, 0);
    rect(150, 150, 100, 100);
  } else {
    contador = 0;
  }
  
  contador++;
}
