// De Rito Bianca 120294/9  
// comisión 2

PImage figura;
int cant,cant2;
float tam,x,y;

//variables de colores
color color1;
color color2;

void setup(){
  size(800,400);
  cant = 11;
  cant2 = 28;
  tam = height;
  x = width/2;
  
// cargar imagen
figura = loadImage("F_2.jpg");

//variables de color
color1 = color(0);
color2 = color(255);
}

void draw(){
  
  keyPressed();
  
  dibujo(cant,tam, color1, color2);
  cant=3;
  tam=80;
  dibujo(cant,tam, color1, color2);
 
  image (figura,0,0,400,400);
}
