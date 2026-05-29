int cant = 100;
int i = 0;

void setup(){
  size(800, 600);
}

void lineas(){
    float sep = width / cant;
    for(int i=0; i< cant; i++){
      float x = i * sep;
      line(x, 0, width/2, height/2);
      line(x, height, width/2, height/2);
    }
}

void draw(){
  background(255, 0, 0);
  lineas();
}
