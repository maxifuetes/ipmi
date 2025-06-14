//Maximiliano Fuentes TP3
//VIDEO:https://youtu.be/ue0R1p8sUE0

//variables planteadas
PImage img;
float tamCelda = 50;           // Tamaño base de los cuadraditos
boolean mostrarGrilla = true;  // Control para mostrar 

void setup() {
  size(800, 400);
  img = loadImage("data/imagen2.jpg");  
}

void draw() {
  background(255);

  image(img, 400, 0, 400, 400);

  if (mostrarGrilla) {
    int cols = calcularColumnas(width / 2);
    int filas = calcularFilas(height);
    
    dibujarGrilla(0, 0, width / 2, height, cols, filas);
    mostrarControles();
  }
}


//  reinicio de la obra
void reiniciar() {
  tamCelda = 50;
  mostrarGrilla = true;
  
}
