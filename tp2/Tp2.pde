int posY=-200;
int posY2=480;
int posX = -200;
int posX2=640;
int posX3=-100;
int posX4=640;
int velocidad =4;
int estado = 0;
int[] tiempos = {180, 360, 540, 720, 900, 1080,1260,1440,1620,1800,1980};
int tiempoInicio = 0;
PImage pantalla1;
PImage pantalla2;
PImage pantalla2p2;
PImage pantalla2p3;                        
PImage pantalla2p4;
PImage pantalla2p5;
PImage pantalla3;                        
PImage pantalla3p2;
PImage pantalla3p3;
PImage pantalla3p4;
PImage pantalla4;
int tamTexto2=1;
int tamTexto = 50;
int tamFreddy = 1;
int tamBonnie = 1;
int tamFoxy = 1;
int tamChica = 1;
int tamPurpleguy = 1;
PFont font;
PFont font2;

void setup(){
  size(640,480);
  frameRate(60);
  pantalla1 = loadImage("FNaF1.png");
  pantalla2=loadImage("FNaF.office1.jpg");
  pantalla2p2=loadImage("freddy.jpg");
  pantalla2p3=loadImage("Golden Freddy.jpg");
  pantalla2p4=loadImage("bonnie.jpg");
  pantalla2p5=loadImage("FNaFcamara.jpg");
  pantalla3=loadImage("freddys.jpg");
  pantalla3p2=loadImage("bonnies.jpg");
  pantalla3p3=loadImage("foxis.jpg");
  pantalla3p4=loadImage("chicas.jpg");
  pantalla4=loadImage("purpleguy.jpg");
  textAlign(CENTER, CENTER);
  font= loadFont("fuente.vlw");
  font2= loadFont("fuente2.vlw");
  textFont(font);
  textFont(font2);
  
}

void draw(){
  int tiempoActual = frameCount - tiempoInicio;

if (tiempoActual < tiempos[0]) {
  estado = 0;
} else if (tiempoActual < tiempos[1]) {
  estado = 1;
} else if (tiempoActual < tiempos[2]) {
  estado = 2;
} else if (tiempoActual < tiempos[3]) {
  estado = 3;
} else if (tiempoActual < tiempos[4]) {
  estado = 4;
} else if (tiempoActual < tiempos[5]) {
  estado = 5;
} else if (tiempoActual < tiempos[6]) {
  estado = 6;
} else if (tiempoActual < tiempos[7]) {
  estado = 7;
} else if (tiempoActual < tiempos[8]) {
  estado = 8;
} else if (tiempoActual < tiempos[9]) {
  estado = 9;
} else if (tiempoActual < tiempos[10]) {
  estado = 10;
} else {
  estado = 11;
}

  if (estado == 0) {
    pantalla1();
  } else if (estado == 1) {
    pantalla2();
  } else if (estado == 2) {
    pantalla2p2();
  } else if (estado == 3) {
    pantalla2p3();
  } else if (estado == 4) {
    pantalla2p4();
  } else if (estado == 5) {
    pantalla2p5();
  } else if (estado == 6) {
    pantalla3();
  } else if (estado == 7) {
    pantalla3p2();
  } else if (estado == 8) {
    pantalla3p3();
  } else if (estado == 9) {
    pantalla3p4();
  }else if (estado == 10) {
    pantalla4();
 }
}  
  
  
void pantalla1(){
    image(pantalla1, 0, 0,640,480);
    fill(255);
    textFont(font2);
    textSize(70);
    text("Five",posX,150);
    text("Nights at",posX,200);
    text("Freddys",posX,250);
    posX += velocidad;
    if(tamTexto <= 50){
  tamTexto += 1;
}

}
void pantalla2(){
  image(pantalla2, 0, 0,640,480);
  fill(255);
  textFont(font);
  textSize(tamTexto2);
  text("es una franquicia de medios",width/2,210);
  text("basada en una serie de videojuegos de terror",width/2,240);
  text("independientes creada, diseñada, desarrollada y",width/2,270);
  text("publicada por Scott Cawthon.",width/2,300);
  
  if(tamTexto2 <=30){
    tamTexto2 += 1;     
   }
}
void pantalla2p2(){
  image(pantalla2p2, 0, 0,640,480);
  textFont(font);
     textSize(30);
     text("es una franquicia de medios",width/2,210);
     text("basada en una serie de videojuegos de terror",width/2,240);
     text("independientes creada, diseñada, desarrollada y",width/2,270);
     text("publicada por Scott Cawthon.",width/2,300);
     if(tamTexto <=50){
       tamTexto = tamTexto + 1;     
     }
   }
void pantalla2p3(){//golden
  image(pantalla2p3, 0, 0,640,480);
  fill(255);
  textFont(font);
  textSize(25);
  text("La serie se centra en la historia de una pizzería llamada Freddy Fazbear's Pizza.",posX2,30,300,200);
  text("en Five Nights at Freddy's   1, 2 y 3 hay un guardia de seguridad nocturno, que debe utilizar varias herramientas",posX2,150,300,300);
  if(posX2 > width/2){
    posX2 -= velocidad;
  }
}
void pantalla2p4(){//bonnie
  image(pantalla2p4, 0, 0,640,480);
  fill(255);
  textFont(font);
  textSize(25);
  text("La serie se centra en la historia de una pizzería llamada Freddy Fazbear's Pizza.",350,30,300,200);
  text("en Five Nights at Freddy's   1, 2 y 3 hay un guardia de seguridad nocturno, que debe utilizar varias herramientas",350,150,300,300);
  if(tamTexto <= 50){
  tamTexto += 1;
}
} 
  
void pantalla2p5(){//bonnie cams
  image(pantalla2p5, 0, 0,640,480);
  fill(255);
  textFont(font);
     textSize(30);
     text("(sobre todo cámaras de seguridad)",300,posY);
     if(posY < 100){
       posY += velocidad;     
     }
   }
   
void pantalla3(){//freddys
  image(pantalla3, 0, 0,640,480);
  fill(255);
  textFont(font);
     textSize(30);
     text("para sobrevivir contra los animales animatrónicos",posX3,300);
     text("del restaurante,que, poseídos por las almas",posX3,320);
     text("de los niños asesinados en la misma pizzería,",posX3,345);
     text(" buscan matar al guardia durante la madrugada.",posX3,365);
     posX3 += velocidad;
     textFont(font2);
     textSize(tamFreddy);
     text("FREDDY", width/2, 20);
     if (tamFreddy <= 50) {
       tamFreddy +=1;
}
     textSize(15);
     text("(diferentes versiones segun el juego)",width/2,50);
     if(tamTexto <=50){
       tamTexto = tamTexto + 1;     
     }
   }

void pantalla3p2(){//bonnies
  image(pantalla3p2, 0, 0,640,480);
  fill(255);
  textFont(font);
  textSize(30);
     text("para sobrevivir contra los animales animatrónicos",posX3,300);
     text("del restaurante,que, poseídos por las almas",posX3,320);
     text("de los niños asesinados en la misma pizzería,",posX3,345);
     text(" buscan matar al guardia durante la madrugada.",posX3,365);
     textFont(font2);
     textSize(tamBonnie);
     text("BONNIE", width/2, 20);
     if (tamBonnie <= 50) {
       tamBonnie +=1;
}
     textSize(15);
     text("(diferentes versiones segun el juego)",width/2,50);
     if(tamTexto <=50){
       tamTexto = tamTexto + 1;     
     }
  
  
  
  
}
void pantalla3p3(){//foxis
  image(pantalla3p3, 0, 0,640,480);
  fill(255);
  textFont(font);
  textSize(30);
     text("para sobrevivir contra los animales animatrónicos",posX4,300);
     text("del restaurante,que, poseídos por las almas",posX4,320);
     text("de los niños asesinados en la misma pizzería,",posX4,345);
     text(" buscan matar al guardia durante la madrugada.",posX4,365);
     if(posX4 > width/2){
       posX4 -= velocidad;
     }
     textFont(font2);
     textSize(tamFoxy);
     text("FOXY", width/2, 20);
     if (tamFoxy <= 50) {
       tamFoxy +=1;
}
     textSize(15);
     text("(diferentes versiones segun el juego)",width/2,50);
     if(tamTexto <=50){
       tamTexto = tamTexto + 1;     
     }
  
  
  
  
  
  
}
void pantalla3p4(){//chicas
  image(pantalla3p4, 0, 0,640,480);
  fill(255);
  textFont(font);
  textSize(30);
     text("para sobrevivir contra los animales animatrónicos",posX4,300);
     text("del restaurante,que, poseídos por las almas",posX4,320);
     text("de los niños asesinados en la misma pizzería,",posX4,345);
     text(" buscan matar al guardia durante la madrugada.",posX4,365);
     textFont(font2);
     textSize(tamChica);
     text("CHICA", width/2, 20);
     if (tamChica <= 50) {
       tamChica +=1;
}
     textSize(15);
     text("(diferentes versiones segun el juego)",width/2,50);
     if(tamTexto <=50){
       tamTexto = tamTexto + 1;     
     }
  
  
  
  
  
  
}
void pantalla4(){//purpleguy
  image(pantalla4, 0, 0,640,480);
  fill(255);
  textFont(font);
  textSize(30);
  text("estos son los Guardias, Phone guy y Michael Afton que son por los animatronicos confundidos con William Afton (el asesino)",5,posY2,640,480);
   if(posY2 > 90){
       posY2 -= velocidad;     
     }
  textFont(font2);
  textSize(tamPurpleguy);
  text("William Afton",width/2,20);
  text("Phone guy",60,50);
  text("Guardia",200,50);
  text("Guardia",450,50);
  text("Michael Afton",580,50);
     if(tamPurpleguy <=15){
       tamPurpleguy = tamPurpleguy + 1;     
     }
  
  
}
void keyPressed(){
  if (key == 'a'){
    tiempoInicio = frameCount;
    tamTexto = 50; 
    tamTexto2 =1;
    tamFreddy =1;
    tamBonnie =1;
    tamFoxy=1;
    tamChica=1;
    tamPurpleguy=1;
    posX = -200;
    posX2= 640;
    posX3=-100;
    posX4 =640;
    posY=-200;
    posY2=480;
  }
}
