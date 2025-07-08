//Resolución de 800x400 ✓
//Al menos 1 función propia con parámetros (al menos 1) que NO retorna un valor ✓
//Al menos 1 función propia con parámetros (al menos 1) que RETORNA un valor ✓
//Condicionales (if - else). ✓
//Ciclos FOR anidados. ✓
//Eventos (mouse y/o teclado): modificación de variables. ✓
//Algunas funciones matemáticas: dist(), map(), random(). ✓
//Reiniciar el programa: volver variables a estado original. ✓
//La imagen de referencia debe estar ubicada a la izquierda ✓

// https://youtu.be/IPuUIiL4Qus

PImage refe;
float velocidadRotacion = 0;
float anguloBase = 0;
float areaResaltada= 30;

void setup() {
  size(800, 400);
  refe = loadImage("refe.jpg");
  noStroke();
}
float distanciaAlCentro(float x, float y) {
  float centroX = 600;
  float centroY = 200;
  return dist(x, y, centroX, centroY);
}

void draw() {
  background(255);
  image(refe, 0, 0, 400, 400);
  translate(600, height / 2);
  int circulos = 40;
  int cuadradosxCir = 60;
  float espacio = 4;
  anguloBase += velocidadRotacion;
  float distancia = distanciaAlCentro(mouseX, mouseY);
  println("Distancia al centro: " + distancia);



  for (int anillo = 1; anillo < circulos; anillo++) {
    float radio = anillo * espacio;
    circulo(anillo, radio, cuadradosxCir, anguloBase);
  }
}

void circulo(int anillos, float radio, int cuadrados, float rotarTodo) {
  float angulo = TWO_PI / cuadrados;

for (int i = 0; i < cuadrados; i++) {
    float angulo2 = i * angulo + anillos * rotarTodo;
    float x = cos(angulo2) * radio;
    float y = sin(angulo2) * radio;
    float tamaño = angulo * radio * 0.9;

   boolean negro = (i + anillos) % 2 == 0;
   float distanciaAlMouse = dist(mouseX - 600, mouseY - height / 2, x, y);
    boolean resaltar = distanciaAlMouse < areaResaltada;

    dibujarCuadrado(x, y, tamaño, angulo2, negro, resaltar);
  }
}

void dibujarCuadrado(float x, float y, float tamaño, float rotacion, boolean negro, boolean resaltar) {
  push();
  translate(x, y);
  rotate(rotacion);

  if (resaltar) {
    fill(random(255), random(255), random(255));
  } else if (negro) {
    fill(0);
  } else {
    fill(255);
  }

  rect(0, 0, tamaño, tamaño);
  pop();
}
float velocidad = 0.01;
void keyPressed() {
  if (key == 'a' || key == 'A') {
    velocidadRotacion = -velocidad; 
  } else if (key == 'd' || key == 'D') {
    velocidadRotacion = velocidad;  
  }else if (key == '+') {
    areaResaltada += 5; 
  } else if (key == '-') {
    areaResaltada -= 5; 
  }
}

void mousePressed() {
  // Resetea variables al estado original
  velocidadRotacion = 0;
  anguloBase = 0;
}
