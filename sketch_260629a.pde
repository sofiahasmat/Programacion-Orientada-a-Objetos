pelota p;

void setup(){
  size(800, 600);
  p = new pelota(); 
}

void draw(){
  background(0);
  p.mover();
  p.rebota();
  p.mostrar();
}

class pelota{
  PVector pos;
  PVector vel;
  float r = 10;
  color c = color(255);
  
  pelota(){
    pos = new PVector(width / 2, height / 2);
    vel = new PVector(1, 1);
  }

  void mover(){
    pos.add(vel);
  }

  void mostrar(){
    fill(c);
    circle(pos.x, pos.y, r);
  }

  void rebota(){
    if(pos.y > height - r || pos.y < r){
      vel.y = vel.y * (-1); 
    }
    if(pos.x > width - r || pos.x < r){
      vel.x = vel.x * (-1);
    }
  }
}

boolean is_w = false;

void keyPressed(){
  if(key == "w" || key == "W"){
    is_w = true;
  }
}

void keyReleased(){
  if(key == "w" || key == "W"){
    is_w = false;
  }
}

class paleta(){
  PVector pos;
  int ancho;
  int alto;
  PVector vel = new PVector(0, 0);
  // boolean teclaArriba noo noo nono... el "Negro Tecla", Fuiste mi primer amoor. Fuiste toda mi felicidad...
  pelota(float columna){
    pos = new PVector(columna, height/2);
  }
}

void mostrar(){
  fill(255);
  rectMode(CENTER);
  rect(pos.x, pos.y, ancho, alto);
}
