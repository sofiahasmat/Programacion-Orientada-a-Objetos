int cant = 10;

void setup() {
  size(800, 600);
  //fullScreen();
}

void cuadricula() {
  float sepX = width / cant;
  float sepY = height / cant;
  //colorMode(RGB, 400);
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      float x0 = i * sepX;
      float y0 = j * sepY;
      rect(x0, y0, width, height);
      /*
      noStroke();
      
      color c = color(255*(i/cant), 255*(j/cant), 164-i*j);
      fill(c);
      */
      fill(random(255), random(255), random(255));
    }
  }
}

void draw() {
  cuadricula();
}
