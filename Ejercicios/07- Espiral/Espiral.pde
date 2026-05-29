int cant = 10;
int sepx, sepy;

void setup() {
  size(800, 600);
  sepx = width/cant;
  sepy = height/cant;
}

void draw() {
  background(255);
  for (int i = 0; i<cant; i++) {
    line(0, i*sepy, i*sepx, height);              // vertice inferior derecho
    line(i*sepx, 0, width, i*sepy);               // vertice superior izquierdo
    line(width, i*sepy, width - i*sepx, height);  // vertice inferior izquierdo
    line(0, height - i*sepy, i*sepx, 0);          // vertice superior derecho
  }
}
