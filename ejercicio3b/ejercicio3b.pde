float posH, tam;

int numCir, distancia, centroCirculo; 

float gris, azul, colorCirculo; 

void setup(){
size(400,400);
smooth();
}

void draw(){
background(255);
fill(255);
stroke(0);
rectMode(CORNER);
rect(300,320,50,50);
centroCirculo = 0;
colorCirculo = 255;

  if(mouseX > 300 && mouseX < 350 && mouseY > 320 && mouseY < 370){
    
    //Mapeados
    posH = map(mouseX, 300, 350, 20, 420);
    azul = map (mouseY, 320, 370, 180, 255);
    gris = map (mouseY, 320, 370, 180, 0);

    
    
    //Pintamos los circulos
    distancia = int(dist (0, 200, posH, 200));
    numCir = distancia/25;
    
    for (int i = 0; i < numCir; i++){
      
      stroke(1);
      fill(255, colorCirculo, 255);
      circle(centroCirculo, 200, 20);
      centroCirculo = centroCirculo + 25;
      
      if(numCir > 1){
        colorCirculo = colorCirculo - (255 / (numCir-1 ));
      } else {
        colorCirculo = 255;
      }
      
      println(colorCirculo);
      
    }
    

    
    //Pintamos el rectángulo y hacemos que cambie de color
    noStroke();
    fill(gris,gris,azul);
    tam = map(mouseY, 320, 370, 0, 400 );
    rectMode(CENTER);
    rect(posH - 10, 200, 20, tam);
  
  }

} 
