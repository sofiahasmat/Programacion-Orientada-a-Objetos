int cantCol = 12;
int cantFil = 8;

boolean[][][] laberinto;

void setup(){
  size(800, 600); 
  laberinto = new boolean[cantCol][cantFil][6];
  iniciarLaberinto();
}

void iniciarLaberinto(){
  for (int i=0; i<cantCol; i++){
    for (int j=0; j<cantFil; j++){
      for (int k=0; k<6; k++){
        laberinto[i][j][k] = random(1) > 0.5;
      }
    }
  }
}

void laberinto(){

  float tamX = width / (float)cantCol;
  float tamY = height / (float)cantFil;
  
  for (int i=0; i<cantCol; i++){
    for (int j=0; j<cantFil; j++){
      float x = i * tamX;
      float y = j * tamY;

      if (laberinto[i][j][0]){
        line(x, y, x + tamX, y);
      }

      if (laberinto[i][j][1]){
        line(x + tamX, y, x + tamX, y + tamY);
      }

      if (laberinto[i][j][2]){
        line(x, y + tamY, x + tamX, y + tamY);
      }

      if (laberinto[i][j][3]){
        line(x, y, x, y + tamY);
      }

      if (laberinto[i][j][4]){
        line(x, y, x + tamX, y + tamY);
      }
      
      if (laberinto[i][j][5]){
        line(x + tamX, y, x, y + tamY);
      }
    }
  }
}

void draw() {
  background(255);
  laberinto();
}
