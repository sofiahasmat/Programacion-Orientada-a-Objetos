int CANTIDAD = 20;
Movil[] moviles = new Movil[CANTIDAD];

void setup() {
  size(800, 600);
  
  for (int i = 0; i < CANTIDAD; i++) {
    moviles[i] = new Movil(random(width), random(height));
  }
}

void draw() {
  background(30); 
  for (int i = 0; i < CANTIDAD; i++) {
    PVector objetivo;

    if (i < CANTIDAD - 1) {
      objetivo = moviles[i + 1].pos; 
    } else {
      objetivo = new PVector(mouseX, mouseY);
    }

    PVector fuerzaAtraccion = PVector.sub(objetivo, moviles[i].pos);

    PVector fuerzaFriccion = moviles[i].vel.copy();
    fuerzaFriccion.mult(-0.15);
    moviles[i].agregarFuerza(fuerzaAtraccion);
    moviles[i].agregarFuerza(fuerzaFriccion);
  }
  for (int i = 0; i < CANTIDAD; i++) {
    moviles[i].mover();
    moviles[i].mostrar();
  }
}
