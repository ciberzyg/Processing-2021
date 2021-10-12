float coX, coY; // Coordenadas del círculo
float posXTex, posYTex; // Coordenadas del numero
color colCuad; // Color del cuadrado
int cont; // Contador de "mousePressed"
float diam; // Diámetro del círculo;
int distancia; // distancia entre el cuadrado y el círculo.
boolean locked = false;
int tamText;

void setup(){
size(400,400);
smooth();
coX=40;
coY=60;
posXTex= width/2;
posYTex= 160;
colCuad= color(0);
PFont fuente; 
fuente = loadFont("SansSerif-140.vlw"); 
textFont(fuente); 
cont=0;
diam= 40;
distancia = 200;
}

void draw(){
background(255);

noStroke();
fill(colCuad);
rect(170 ,280 , 60,60);

distancia = int (dist(200, 310, coX, coY));

fill(200,0,0);
ellipse(coX,coY,diam,diam);

  if(mouseX > 170 && mouseX < 230 && mouseY > 280 && mouseY < 340) {
    
    diam = map(mouseX, 170, 230, 20, 100);
    
    if(!locked){
      colCuad = color(0, 255, 0);
    }else{
      colCuad = color(0, 0, 255);
      fill(255);
      circle(200,310,40);
      
      stroke(255, 0, 255);
      line(200, 310, coX, coY);
      noStroke();
      
      if(coX < 400){
        coX = coX + 7;
      }else {
        coX = 0;
        if(coY < 400-diam/2){
          coY = coY + diam;
        }else {
          
          coY = diam/2;
          
        }
        
      }
      
    }

    
  } else {
    
    colCuad = color(0, 0, 0);
    
  }

fill(0);
  
textSize(tamText); 
text(cont, posXTex,posYTex);
}

void mousePressed(){
  
  if(mouseX > 170 && mouseX < 230 && mouseY > 280 && mouseY < 340) {
   
    cont++;
  
    locked = true;
    
  }

}

void mouseReleased() {
  
  if(mouseX > 170 && mouseX < 230 && mouseY > 280 && mouseY < 340) {
  
  locked = false;
  
  posXTex = random (0,300);
  posYTex = random (70,280);
  
  tamText = distancia/2;
  
  }
}
