 float x, y, r, g, b;
 String[] listaFrutas = {"melón", "naranja", "kiwi", "plátano", "manzana"};
 PFont font;
 int dim, contador;
 float angulo;
 
 
void setup(){
  size(400, 400);
  background(0);
  font = loadFont("SansSerif-48.vlw");
  frameRate(10);
  contador = 0;
  
}

void draw(){
 
  x = random(-50, 350);
  y = random(-10, 410);
  r = random(256);
  g = random(256);
  b = random(256);
  dim = int(random(12, 50));
  angulo = radians(random(-30, 30));
  
  fill(r, g, b, 10);
  rect(0,0, width, height);
  
  fill(r, g, b);
  textFont(font, dim);
  //text(listaFrutas[int(random(listaFrutas.length))], x, y);
  
  pushMatrix();
  
  translate(x, y);
  rotate(angulo);
  text(listaFrutas[contador % 5], 0, 0);
  contador++;
  
  popMatrix();
  
}
