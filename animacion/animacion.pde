int actual;
int total = 15;
PImage[] fotos;
String dibujo;

void setup(){
  size(400, 400);
  frameRate(10);
  
  fotos = new PImage[total];
  
  for(int i = 0; i < total; i++){
    
    dibujo = "tipejo" + nf(i, 2) + ".jpg";
    fotos[i] = loadImage(dibujo);
    
  }
}

void draw(){
  background(255);
  
  actual = frameCount % total;
  image(fotos[actual], 0, 0);
  
}
