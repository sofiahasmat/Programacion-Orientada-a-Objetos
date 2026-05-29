Movil n;
Movil otro;

void setup(){
  size(800, 600);
  
  n = new Movil(width / 2, height / 2);
  otro = new Movil(100, 300);
  n.d = 80;
}

void draw(){
  n.mover();
  otro.mover();
  
  n.mostrar();
  otro.mostrar();
}
