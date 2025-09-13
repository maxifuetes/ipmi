//Maximiliano Fuentes 
// video: https://youtu.be/kjMFUgW4s5E

let img;                    // cambia let por PImagen
let tamCelda = 50;          //  
let mostrarGrilla = true;   //cambia el bolean por un true

function preload() {
  img = loadImage("data/imagen2.jpg");
}

function setup() {
  createCanvas(windowWidth, windowHeight); // size cambia a createCanvas 
}

function draw() {
  background(255);


  image(img, 1000, 0, 900, 1000);

  
  if (mostrarGrilla) {
    let cols = calcularColumnas(width / 2); // Int y for cambian por let 
    let filas = calcularFilas(height);
    
    dibujarGrilla(0, 0, width / 2, height, cols, filas);
    mostrarControles();
  }
}


function reiniciar() {
  tamCelda = 50;
  mostrarGrilla = true;
}

function dibujarGrilla(x_, y_, ancho_, alto_, numCols_, numFilas_) {
  push();

  let anchoCasilla = ancho_ / numCols_;
  let altoCasilla = alto_ / numFilas_;

  for (let b = 0; b < numFilas_; b++) {
    let desplazamiento = 0;

    if (b % 2 === 1) {
      desplazamiento = anchoCasilla / 2;
    }

    for (let a = 0; a < numCols_; a++) {
      let x = x_ + a * anchoCasilla + desplazamiento;
      let y = y_ + b * altoCasilla;

      if (x + anchoCasilla <= width) {
        if ((a + b) % 2 === 0) {
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

function calcularColumnas(ancho) {
  return int(ancho / tamCelda);
}

function calcularFilas(alto) {
  return int(alto / tamCelda);
}

function keyPressed() {
  if (key === 'g' || key === 'G') {
    mostrarGrilla = !mostrarGrilla;
  }

  if (key === 'w' || key === 'W' || key === '=') {
    tamCelda += 5;
  }

  if ((key === 's' || key === 'S') && tamCelda > 10) {
    tamCelda -= 5;
  }

  if (key === 'e' || key === 'E') {
    reiniciar();
  }
}

function mostrarControles() {
  fill(230);
  noStroke();
  rect(650, 10, 150, 100);

  fill(0);
  textSize(12);
  textAlign(LEFT, TOP);

  text("Controles del programa:\n" +
       "- G: mostrar/ocultar grilla\n" +
       "- W / S: cambiar tamaño\n" +
       "- E: reiniciar todo", 
       650, 10);
}
