float cX;
float cY;
float radio;

void setup() {
  size(800, 600);
  radio = random(100, 400);
  cX = random(width);
  cY = random(height);
}

boolean mouseTouch(float pX, float pY, float cX, float cY, float r){
  float distancia = dist(pX, pY, cX, cY);
  if (distancia > r) {
    return false;
  } 
  else{
    return true;
  }
}

void circulo() {
  if (mouseTouch(mouseX, mouseY, cX, cY, radio)){
    fill(255, 0, 0);
  } 
  else {
    fill(255);
  }
  
  circle(cX, cY, radio * 2);
}

void draw() {
  circulo();
}
