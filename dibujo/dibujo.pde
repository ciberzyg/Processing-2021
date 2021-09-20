void setup(){
  size(600,600); //Tamaño de ventana
  smooth(); //Suavizamiento de pixeles
}
  
void draw(){  

  background(255);
  stroke(0); // trazo de color. De 0 al 255 (gama de grises)
  strokeWeight(1);
  point(50,50); //Punto
  line(30, 140, 400, 20); //Línea

  fill(0); //Relleno de la forma. De 0 al 255 (gama de grises)
  rect(20,220, 240,350, 20); //Rectángulo con esquinas redondeadas (último parámetro)

  strokeWeight(6); // Grosor de línea 3
  point(550,50);

  stroke(255,0,0); // Línea de color RGB. Cada uno de los tres parámetros del color RGB van de 0 a 255
  fill(200); // relleno de gris
  ellipse(470,100,90,90); //Elipse

  fill(255, 220); //Blanco con opacidad 220
  rect(50, 330, 100, 150);

  noStroke(); // Dibujar sin línea
  rect(100, 400, 100, 150);

  fill(129, 130, 87); // Relleno de color RGB. Cada uno de los tres parámetros del color RGB van de 0 a 255
  rect(300,300, 150,150);

  noFill(); //Para dibujar formas no rellenas
  strokeWeight(3);
  stroke(174, 221, 60);  // Color de la línea
  rect(330, 180, 250, 80);  

  noStroke();  // Dibujar sin línea
  fill(174, 221, 60);  // Color del relleno
  ellipse(450, 420, 120, 100);

  fill(174, 20, 60, 40); // Los 3 primeros parámetros son el RGB. El cuarto parámetro del color es la opacidad
  ellipse(520, 470, 90, 190);

  noFill();
  stroke(0, 0, 255); 

  beginShape(); //Se dibuja una forma uniendo los vértices
  vertex(280, 580);
  vertex(280, 350);
  vertex(20, 180);
  vertex(190, 180);
  vertex(300, 20);
  vertex(550, 300);
  endShape(CLOSE);    //Se finaliza el dibujo cerrando el polígono

  //println(mouseX, mouseY);
}
