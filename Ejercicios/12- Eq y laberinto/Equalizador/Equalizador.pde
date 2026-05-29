int cantBarras = 100;
float[] barras;

void setup(){
  size(800, 400);
  barras = new float[cantBarras];
  
  for (int i=0; i<cantBarras; i++){
    barras[i] = 50;
  }
}

void dibujarBarras(){
  float ancho = width / (float)cantBarras;

  for (int i=0; i<cantBarras; i++){
    float x = i * ancho;
    float h = barras[i];

    fill(300, 0, 0);
    rect(x, height - h, ancho - 2, h);
  }
}

void actualizarMouse(){
  if (mousePressed){
    float ancho = width / (float)cantBarras;
    int indice = int(mouseX / ancho);
    
    if (indice >= 0 && indice < cantBarras){
      float nuevaAltura = height - mouseY;

      if (nuevaAltura < 0){
        nuevaAltura = 0;
      }
      if (nuevaAltura > height){
        nuevaAltura = height;
      }
      barras[indice] = nuevaAltura;
    }
  }
}

void draw(){
  background(0);
  dibujarBarras();
  actualizarMouse();
}

