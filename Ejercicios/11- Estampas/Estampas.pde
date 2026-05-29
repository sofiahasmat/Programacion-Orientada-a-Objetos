int cantFil = 16;
int cantCol = 9;

boolean[][] estados;

void setup(){
  size(800, 600);
  estados = new boolean[cantCol][cantFil];
}

void grilla() {
  float tamX = width / (float)cantCol;
  float tamY = height / (float)cantFil;

  for (int i = 0; i < cantCol; i++){
    for (int j = 0; j < cantFil; j++){

      float x = i * tamX;
      float y = j * tamY;

      if (estados[i][j]){
        estampa(x, y, tamX, tamY);
      }
      else{
        stroke(200);
        fill(255);
        rect(x, y, tamX, tamY);
      }
    }
  }
}
void mousePressed(){
  float tamX = width / (float)cantCol;
  float tamY = height / (float)cantFil;
  int col = int(mouseX / tamX);
  int fil = int(mouseY / tamY);

  if (col >= 0 && col < cantCol && fil >= 0 && fil < cantFil){
    estados[col][fil] =! estados[col][fil];
  }
}
void estampa(float x, float y, float w, float h){
  rect(x, y, w, h);
  fill(50, 100, 200);
  ellipse(x + w/2, y + h/2, w * 0.5, h * 0.5);
  fill(255);
}

void draw(){
  background(220);
  grilla();
}
