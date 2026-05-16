class Movil{
  PVector pos;
  PVector vel = new PVector(4, 3);
  float  d = 40;
  
  Movil(float origenX, float origenY){
    pos = new PVector(origenX, origenY);
  }
  
  void mostrar(){
    circle(pos.x, pos.y, d);
  }
  
  void contener(){
   if(pos.y >= height || 0 >= pos.y){
    vel.y=vel.y*(-1);
    }
 
  if(pos.x >= width || 0 >= pos.x){
    vel.x = vel.x * (-1);
    }
  }
  
  void mover(){
    pos.add(vel);
  }
}
