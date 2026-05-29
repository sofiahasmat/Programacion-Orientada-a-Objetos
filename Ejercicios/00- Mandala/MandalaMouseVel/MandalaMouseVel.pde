float prevX = 0;
float prevY = 0;

void setup(){
  size(800, 600);
}

//Funcion(devuelve valores, ej: Random(numero) y procedimiento(no devuelven valores) diferencia

void lineaProps(){ //Procedimiento
  stroke(100, 200, 0);
  strokeWeight(mouseVel());
}

void mandala(){
  if(mousePressed){
    line(mouseX, mouseY, prevX, prevY);
    line(width - mouseX, mouseY, width - prevX, prevY);
    line(mouseX, height - mouseY, prevX, height - prevY);
    line(width - mouseX, height - mouseY, width - prevX, height - prevY);
    line(mouseX, mouseY, prevX, prevY);
  }
  prevX = mouseX;
  prevY = mouseY;
}
  /*line(100, 540, 500, 200); funciona con linea 17
    println(width - mouseX, mouseY, width - prevX, prevY);
    frameRate(10);
    line(width - mouseX, height - mouseY, prevX, prevY); for fun
  else{
    text("hola", mouseX, mouseY);
    circle(50, 50, 50);                 for fun
    stroke(200, 0, 200);
  } 
  */  
int randomI(float max){
  int val = round(random(max));
  return val;
}

float mouseVel(){
  float catetoAdyacente = prevX - mouseX;
  float catetoOpuesto = prevY - mouseY;
  
  float hipotenusa = sqrt(catetoAdyacente * catetoAdyacente + catetoOpuesto * catetoOpuesto);
  //float hipotenusa = (catetoAdyacente * catetoAdyacente) + (catetoOpuesto * catetoOpuesto); *esto es lo mismo que "sqrt" *
  return hipotenusa;
}

void draw(){
  lineaProps();
  mandala();
}
