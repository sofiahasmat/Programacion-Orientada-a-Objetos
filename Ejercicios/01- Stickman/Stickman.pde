float x;
float y;
float escala;
float cabeza;

void setup(){
  size(500, 500);
}

void lineaProps(){
  stroke(255, 0, 0);
  strokeWeight(2);
}

void calcularProps(){
  x = width / 2;
  y = height / 2;
  escala = min(width, height) * 0.3;
  cabeza = escala * 0.2;
}

void stickman(){
  circle(x, y - escala * 0.4, cabeza);

  line(x, y - escala * 0.3, x, y + escala * 0.2);
  
  line(x - escala * 0.3, y - escala * 0.1, x + escala * 0.3, y - escala * 0.1);
  
  line(x, y + escala * 0.2, x - escala * 0.2, y + escala * 0.5);
  line(x, y + escala * 0.2, x + escala * 0.2, y + escala * 0.5);
}

void draw(){
  background(255);
  lineaProps();
  calcularProps();
  stickman();
}
