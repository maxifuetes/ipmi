// Entrega tp2 Maximiliano Fuentes 
// legajo 122701/1
int contadorTiempo;
int imagenes;
PImage foto1;
PImage foto2;
PImage foto3;
PImage foto4;
PFont miFuente;

void setup() {
  size(640,480);
  contadorTiempo = 0;
  foto1 = loadImage("data/foto_1.jpg");
  foto2 = loadImage("data/foto_2.jpg");
  foto3 = loadImage("data/foto_3.jpg");
  foto4 = loadImage("data/foto_4.jpg");
  miFuente  = createFont("data/letras.otf",48);
  textFont (miFuente);
  frameRate(30);
}




void draw() {
  background(255); 
  if ( imagenes == 0 ) {
    image(foto1, 0, 0, width, height);
    fill(255);
    textAlign(CENTER, CENTER);
    textSize(50);
    float y = map(contadorTiempo,0,150,0,400) ; 
    text("Esta es la obra de arte\nMas alla de los limites ", width/2, y);
    
    } else if ( imagenes == 1 ) {
 
    float y =  map(contadorTiempo,0,150,height/2,height/2-140) ;
    image(foto2, 0, 0, width, height);
    fill(255);
    textAlign(CENTER, CENTER);
    textSize(45);
    text("Esta obra fue presentada en Paris\nEn el año 2018", width/2, y);
    
  } else if ( imagenes == 2 ) {
    float y =  map(contadorTiempo,0,150,height/2,500) ;
    image(foto3, 0, 0, width, height);
    fill(0);
    textAlign(CENTER, CENTER);
    textSize(45);
    text("es una obra de arte\nelectronico y digital interactivo", width/2, y);
    
  } else if ( imagenes == 3) {
    float y =  map(contadorTiempo,0,150, 0, 400) ;
    image(foto4, 0, 0, width, height);
    fill(0);
    textAlign(CENTER, CENTER);
    textSize(30);
    text("los autores de esta obra se llaman\n TeamLab que son un grupo desde 2001", width/2, y);
   
   
  } else if ( imagenes == 4 ) {                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         
    float distancia = dist(370, 240, mouseX, mouseY);
    if ( distancia < 40 ) {
      fill(0, 200, 0); 
    } else {
      fill(200); 
    }

    ellipse(370, 240, 90, 90);
    fill(0);
    textSize(19);
    textAlign(CENTER);
    text( "VOLVER\nA EMPEZAR", 370, 240);

  if ( dist(200, 240, mouseX, mouseY) < 40 ) {
      fill(0, 255, 0);  
    } else {
    fill(200); 
    }
    ellipse(200, 240, 90, 90);
    fill(0);
    textSize(20);
    textAlign(CENTER);
    text( "CERRAR", 200, 240);
    
    
    
    
  }   
  contadorTiempo++; 
  if (contadorTiempo>380) {
    contadorTiempo = 0;
    imagenes++;
    if ( imagenes>2 ) {
      imagenes = 2;
    }
  }
  
}

void mousePressed() {
  imagenes++;
  contadorTiempo = 0;  
   if ( imagenes>4 ) {
    imagenes = 0;
  }
    if ( imagenes == 0 ) {
      float distancia = dist(370, 240, mouseX, mouseY);
      if (distancia < 40 ) {
        imagenes = 0;
      }
        
    if (dist(200,240,mouseX,mouseY)<40){
      exit(); 
    }
    
    
    
 
    
      
  }
}
