void dibujarGrilla(float x_, float y_, float ancho_, float alto_, int numCols_, int numFilas_) {
  push();

  float anchoCasilla = ancho_ / numCols_;
  float altoCasilla = alto_ / numFilas_;

  for (int b = 0; b < numFilas_; b++) {
    float desplazamiento = 0;

    if (b % 2 == 1) {
      desplazamiento = anchoCasilla / 2;
    }

    for (int a = 0; a < numCols_; a++) {
      float x = x_ + a * anchoCasilla + desplazamiento;
      float y = y_ + b * altoCasilla;

      if (x + anchoCasilla <= width) {
        if ((a + b) % 2 == 0) {
          fill(0);
        } else {
          fill(255);
        }

        stroke(150);
        strokeWeight(2);
        rect(x, y, anchoCasilla, altoCasilla);
      }
    }

    // Líneas horizontales 
    stroke(150);
    strokeWeight(4);
    line(x_, y_ + b * altoCasilla, x_ + ancho_, y_ + b * altoCasilla);
  }

 

  pop();
}

// funcion que da valor (ancho)
int calcularColumnas(float ancho) {
  return int(ancho / tamCelda);
}

//funcion que da valor (alto)
int calcularFilas(float alto) {
  return int(alto / tamCelda);
}


void keyPressed() {
  if (key == 'g') {
    mostrarGrilla = !mostrarGrilla;  // apagar o prender
  }

  if (key == 'w' || key == '=') {
    tamCelda += 5;  // Aumentar tamaño de los cuadraditos
  }

  if (key == 's' && tamCelda > 10) {
    tamCelda -= 5;  // Disminuir tamaño de los cuadraditos
  }

  if (key == 'e') {
    reiniciar();  // Reiniciar 
  }
  
}
