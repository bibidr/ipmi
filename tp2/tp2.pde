//tp2
// comisión 2
// Bianca De Rito, legajo: 120294/9

PFont fuente;
PImage img1;
PImage img2;
PImage img3;
PImage img4;
int estado;
String texto1;
String texto2;
String texto3;
String texto4;

void setup(){
  fuente= loadFont("robloxuwu.vlw");
  textFont(fuente);
  textAlign(CENTER, CENTER);
size (640,480);
 println(frameCount);
  textSize(30);
  
  // imagenes
  img1= loadImage ("roblox.jpg");
  img2= loadImage ("roblox2.jpg");
  img3= loadImage ("roblox3.jpg");
  img4= loadImage ("roblox4.jpg");
  
  //textos
 texto1 = "Roblox es una plataforma de videojuegos \n multijugador y de creación de \n videojuegos en línea";
 texto2 = "los usuarios pueden crear y compartir sus \n propios mundos virtuales \n con el sistema de creación \n de juegos llamado Roblox Studio";
 texto3 = "recomiendo jugar roblox,\n es muy divertido \n y es para todas las edades";
 texto4 = "FIN \n TOCA ACÁ PARA REINICIAR";
 
  // asignación de estado
  estado = 1;
}

void draw(){
  fill(255,0,0);
  println(frameCount) ;
  
  // estados
  
  if(estado==1){ 
    image(img1,0,0,640,480);
 text(texto1,320,240-frameCount/2);
 if (frameCount/60>=10){
   frameCount=0;
estado=2;
 
 }
 }
 
 if(estado==2){ 
   image(img2,0,0,640,480);
 text(texto2,320,240-frameCount/-2);
 if (frameCount/60>=10){
      frameCount=0;
      estado=3;
  
 }
 }

 if(estado==3){ 
   image(img3,0,0,640,480);
 text(texto3,320,240-frameCount/1);
 if (frameCount/60>=7){
     frameCount=0;
 estado=4;
 }
 }
 
if(estado==4){
  image(img4,0,0,640,480);
  text(texto4,320,240);
  if (frameCount/60>=10){
     frameCount=0;
  }
}
}

void mousePressed(){
  if( estado == 4 && mouseX>=235 && mouseX<=404 && mouseY>=235 && mouseY<=404){
    frameCount = 1;
    estado = 1;
  }
}
