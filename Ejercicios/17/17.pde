class Movil {
  PVector acel=new PVector(0, 0);
  PVector pos;
 
  PVector vel = new PVector(4, 3);
  float d=40;
  
  PVector Mxy = new PVector(0, 0);
 
  Movil(float origenX, float origenY) {
    pos= new PVector(origenX, origenY);
  }
  void mostrar() {
    fill(255);
    circle(pos.x, pos.y, d);

  }
  void contener() {
    if (pos.x  > width || pos.x < 0) {
      vel.x =vel.x* -1;
   
    }
    if (pos.y  > height || pos.y  < 0) {
      vel.y =vel.y* -1;
 
    }
  }

  void mover() {
    pos.add(vel);
    vel.add(acel);
    acel.mult(0);

    contener();
  }
  void agregarFuerza(PVector F) {
    acel.add(F);
  }
  
  void alejar(PVector otro, float cuanto){
    PVector r = pos.copy();
    r.sub(otro);
    r.normalize();
    r.mult(cuanto);
    agregarFuerza(r);
  }
  
  void draw(){
    n.mostrar();
    n.mover();
    n.agregarFuerza();
    n.contener();
    
    Mxy.x = mouseX;
    Mxy.y = mouseY;
    n.alejar(Mxy, 2);
  }
  
  boolean chocaCon(PVector otraPos float otroR){
    float d = dist(pos.x, pos.y, otraPos.x, otraPos.y);
  }
  
  if(d < (r + otroR)){
    return true;
  }
  else{
    return false;
  }
  
  void desacelerar(float cantidad){
    PVector R = vel.copy;
    R.normalize();
    R.mult(cantidad);
    agregarFuerza(R);
  }
}
