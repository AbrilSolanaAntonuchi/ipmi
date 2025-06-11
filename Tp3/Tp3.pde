//Resolución de 800x400
//Al menos 1 función propia con parámetros (al menos 1) que NO retorna un valor
//Al menos 1 función propia con parámetros (al menos 1) que RETORNA un valor
//Condicionales (if - else).
//Ciclos FOR anidados.
//Eventos (mouse y/o teclado): modificación de variables.
//Algunas funciones matemáticas: dist(), map(), random().
//Reiniciar el programa: volver variables a estado original.
//La imagen de referencia debe estar ubicada a la izquierda

PImage refe;
boolean negro;
void setup(){
  size(800,400);
  refe=loadImage("refe.jpg");
}
void draw() {
  background(255);
  rect(0, 0, 10, 10);
  image (refe, 0,0, 400, 400);
  push();
  translate(600, 200);
  rotate(radians(frameCount)); 
  rect(0, 0, 10, 10);
  pop();
  push();
  translate(600, 200);
  rotate(radians(frameCount*2)); 
  rect(0, 0, 10, 10);
  pop();
  push();
  translate(600, 200);
  rotate(radians(frameCount*3)); 
  rect(0, 0, 10, 10);
  pop();
   push();
  translate(600, 200);
  rotate(radians(frameCount*4)); 
  rect(0, 0, 10, 10);
  pop();
  
  
}
//hola entrege el tp pq me voy a mi pueblo y no lo voy a poder ni hacer ni enviar desde alla 
//no de vaga, me defiendo porque si entendi la consigna y todo 
//pero no se como hacer lo que yo quiero hacer con lo que nos dieron y no tengo tiempo
//asi que prefiero un recu para que me expliquen todo denuevo xd
//gracias profe por tanto perdon por tan poco, juro que lo di todo
