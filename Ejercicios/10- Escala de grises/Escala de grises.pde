int cantFil = 15;
int cantCol = 20;

float[][] distancias;

void setup(){
  size(800, 600);
  distancias = new float[cantCol][cantFil];
}

void calcularDistancias(){
  float sepX = width / (float)cantCol;
  float sepY = height / (float)cantFil;

  for (int i = 0; i < cantCol; i++){
    for (int j = 0; j < cantFil; j++){
      float cx = i * sepX + sepX / 2;
      float cy = j * sepY + sepY / 2;
      
      float d = dist(cx, cy, mouseX, mouseY);
      
      distancias[i][j] = d;
    }
  }
}

void grilla() {
  float sepX = width / (float)cantCol;
  float sepY = height / (float)cantFil;
  float distMax = dist(0, 0, width, height);

  for (int i = 0; i < cantCol; i++){
    for (int j = 0; j < cantFil; j++){
      float x0 = i * sepX;
      float y0 = j * sepY;

      float d = distancias[i][j];
      float gris = map(d, 0, distMax, 255, 0);

      fill(gris);
      noStroke();
      rect(x0, y0, sepX, sepY);
    }
  }
}

void draw(){
  background(0);
  
  calcularDistancias();
  grilla();
}
