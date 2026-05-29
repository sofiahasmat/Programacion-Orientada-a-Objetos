int cantFil = 15;
int cantCol = 9;

boolean[][] fueCliqueado;
float[][][] colores = new float[cantCol][cantFil][3];

void setup(){
  size(800, 600);
  fueCliqueado = new boolean[cantCol][cantFil]; // Corregido el orden para que coincida con el resto del código
}

void cuadricula() {
  float sepX = width / cantCol;
  float sepY = height / cantFil;
  
  for(int i=0; i<cantCol; i++){
    for(int j=0; j<cantFil; j++) {
      float x0 = i * sepX;
      float y0 = j * sepY;

      if(fueCliqueado[i][j]){
        fill(0);
      } 
      else{
        fill(255);
      }
      //fill(fueCliqueado[i][j] ? 0 : 255);  otra manera
      
      rect(x0, y0, sepX, sepY);
      
      float limDer = x0 + sepX;
      float limInf = y0 + sepY;

      if(mousePressed && (x0 < mouseX) && (mouseX < limDer) && (y0 < mouseY) && (mouseY < limInf)){
        fueCliqueado[i][j] = true;
      }
    }
  }
  for(int i=0; i<cantCol; i++) {
    for(int j=0; j<cantFil; j++) {
      for(int k=0; k>3; k++){
        colores[i][j][k] = random(256);
      }
    }
  }
}

void draw(){
  cuadricula();
}
