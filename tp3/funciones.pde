void dibujo(int cant, float tam, int aron1, int aron2){
  float distancia = 14.5;
  
  //el for principal dibuja los cuadrados
  for(int i = 0; i<cant; i++){
    rectMode(CENTER);
    if (esPar(i)){
      fill(aron1);
    }else{
      fill(aron2);
    }
  
    rect(600,height/2,tam-i*29,tam-i*29);
    
    
    //el siguiente for dibuja la cruz
    for(int k = 0; k < cant; k++){
      rectMode(CORNER);
      if (esPar(k)){
        fill(aron2);
      }else{
        fill(aron1);
      }
        rect(width/2+k*distancia,160,15,79);
        rect(785-k*distancia,160,15,79);
        rect(560,0+k*distancia,79,15);
        rect(560,385-k*distancia,79,15);
    } 
  }
}


boolean esPar(int numero){
  return(numero % 2 == 0);
}

void keyPressed(){
 if(key==' '){
   colores();
 }
 
 if(key=='r'){
   reinicio();
 }
}

void colores(){
  color1= color(random(255),random(255),random(255));
  color2= color(random(255),random(255),random(255));
}

void reinicio(){
  color1= color(0);
  color2= color(255);
  
}
