 PImage foto1, foto2, foto3, foto4;
 PImage a, mascara;
 int ancho, crono;
 
 void setup(){
   
   size(400, 400);
   
  ancho = 40;
   
   background(0);
   noStroke();
   fill(40);
   rect(0, 0, ancho, ancho);
   mascara = get(0, 0, ancho, ancho);
   fill(0);
   rect(0,0,ancho,ancho);
   
   foto1 = loadImage("arco.jpg");
   foto2 = loadImage("Torre.jpg");
   foto3 = loadImage("coche.jpg");
   foto4 = loadImage("luces.jpg");
   

   
 }
 void draw(){
   
  crono = millis() % 16000;
  
  if (crono < 4000){
    
    a = foto1.get(mouseX-ancho/2, mouseY-ancho/2, ancho, ancho);
    
  } else if (crono >= 4000 && crono < 8000){
    
    a = foto2.get(mouseX-ancho/2, mouseY-ancho/2, ancho, ancho);
    
  }else if (crono >= 8000 && crono < 12000){
    
    a = foto3.get(mouseX-ancho/2, mouseY-ancho/2, ancho, ancho);
    
  } else {
   
   a = foto4.get(mouseX-ancho/2, mouseY-ancho/2, ancho, ancho);
   
  }
  
   a.mask(mascara);
   image(a, mouseX-ancho/2, mouseY-ancho/2);
   
 }
