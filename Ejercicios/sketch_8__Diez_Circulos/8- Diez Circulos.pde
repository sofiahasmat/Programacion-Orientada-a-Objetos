int cant = 10;
PVector[] puntos = new PVector[cant];
int indice = 0;

void setup() {
  size(800, 600);
}

void draw() {
  background(255);
  
  for (int i = 0; i < cant; i++) {
    if (puntos[i] != null) {
      ellipse(puntos[i].x, puntos[i].y, 20, 20);
    }
  }
}

void mousePressed() {
  puntos[indice] = new PVector(mouseX, mouseY);
  indice = (indice + 1) % cant;
}
