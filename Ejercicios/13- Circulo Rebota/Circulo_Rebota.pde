PVector pos, vel;
float d = 40;
void setup(){
  size(800, 600);
  pos = new PVector(width / 2, height / 2);
  vel = new PVector(4, 3);
}

void draw(){
  pos.add(vel);
  vel.rotate(PI / 300);
  //println(pos.x, pos.y);
  if(pos.y >= height || 0 >= pos.y){
    vel.y=vel.y*(-1);
  }
 
  if(pos.x >= width || 0 >= pos.x){
    vel.x = vel.x * (-1);
  }
  
  circle(pos.x, pos.y, d);
}
