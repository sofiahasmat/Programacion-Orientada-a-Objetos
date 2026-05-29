float cX;
float cY;
float radio;
float ancho;
float alto;

void setup() {
  size(800, 600);
}

boolean mouseTouch(float pX, float pY, float cX, float cY, float r){
  float distancia = dist(pX, pY, cX, cY);
  if (distancia > r) {
    return false;
  } else {
    return true;
  }
}

void circulo(float posicionX, float posicionY, float ancho) {
  radio = ancho / 2;
  if (mouseTouch(mouseX, mouseY, posicionX, posicionY, radio)){
    fill(255, 0, 0);
  } else {
    fill(255);
  }
  
  // ojos
  circle(posicionX, posicionY, ancho);
  float ojoX = ancho * 0.2;
  float ojoY = ancho * 0.2;
  float ojo = ancho * 0.1;
  circle(posicionX - ojoX, posicionY - ojoY, ojo);
  circle(posicionX + ojoX, posicionY - ojoY, ojo);
  
  //bigote
  float bigoteY = posicionY;
  float largoBig = ancho * 0.4;
  float separacion = ancho * 0.1;
  
  //izq
  line(posicionX - separacion, bigoteY, posicionX - largoBig, bigoteY - separacion);
  line(posicionX - separacion, bigoteY, posicionX - largoBig, bigoteY);
  line(posicionX - separacion, bigoteY, posicionX - largoBig, bigoteY + separacion);
  
  //der
  line(posicionX + separacion, bigoteY, posicionX + largoBig, bigoteY - separacion);
  line(posicionX + separacion, bigoteY, posicionX + largoBig, bigoteY);
  line(posicionX + separacion, bigoteY, posicionX + largoBig, bigoteY + separacion);
}

void mousePressed(){
  cX = mouseX;
  cY = mouseY;  
  ancho = 80;
  alto = 80;
}

void draw() {
  background(255);
  circulo(cX, cY, ancho);
}
