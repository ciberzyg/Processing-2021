String [] listaPalabras = {"Con", "estas", "palabras", "que",
"vienen", "y", "van", "finalizamos", "el", "curso", "de", 
"Processing", " ", "Hasta pronto" };

PFont font;

float posX, tamañoTexto, resta;

int i, angulo, sentido, incremento;


void setup(){
  
  size(400, 400);

  font = loadFont("SansSerif-92.vlw");
  
  i = 0;
  
  angulo = 0;
  
  sentido = -1;
  
  incremento = 4;
  
  posX = 0;
  
  resta = 400;
  
}

void draw(){
    
    background(#776A67);
    textFont(font, 48);
    
    posX += incremento;
    
    if (i < 13){
      
      
      text(listaPalabras[i],posX ,200);
      
      tamañoTexto = textWidth(listaPalabras[i]);
      
      resta = 400 - tamañoTexto;
      
      
      if (posX >= resta ){
        
        incremento = incremento * sentido;
        
        i++;
        
        posX = 400 - textWidth(listaPalabras[i]);
        
        text(listaPalabras[i],posX ,200);
        
        if(i < 12){
          
          frameRate(40-(int(textWidth(listaPalabras[i]))*2)/20);
          
          println(40-(int(textWidth(listaPalabras[i]))*2)/20);
          
        } else {
          
          frameRate(40);
          
        }
        
        
    
      } else if (posX < 0){
        
        incremento = incremento * sentido;
        
        i++;
        
        posX = 0;
        
        text(listaPalabras[i],posX ,200);
        
        if(i < 12){
          
          frameRate(40-(int(textWidth(listaPalabras[i]))*2)/20);
          println(40-(int(textWidth(listaPalabras[i]))*2)/20);

        } else {
          
          frameRate(40);
          
        }
        
      }
      
    } else {
      
       posX =0;
      
      pushMatrix();
      
       tamañoTexto = textWidth(listaPalabras[13]);
      
      translate(200, 200);
      rotate(radians(angulo));
      text(listaPalabras[13], -(tamañoTexto/2) , 12);
     
      angulo += 6;
      
      
      popMatrix();
    }
    
  
}

void mousePressed(){
  
  i = 0;
  posX = 0;
  
}
