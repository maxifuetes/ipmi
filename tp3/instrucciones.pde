void mostrarControles() {
  fill(230);        
  noStroke();        
  rect(650, 10, 150, 100);  

  
  fill(0);           
  textSize(12);
  textAlign(LEFT, TOP);
  
  text("Controles del programa:\n" +
       "- G: mostrar/ocultar grilla\n" +
       "- w / s: cambiar tamaño\n" +
       "- e: reiniciar todo\n" +
       "- X: cerrar programa", 
       650, 10);  
}
