//https://youtu.be/k5CxCDcnOL8

PImage original;
boolean cambiarColores = false;
boolean usarDistancia = false; 
int numCuadros = 12;

void setup() {
  size(800, 400);
  original = loadImage("F_12.jpg");
}

void draw() {
  background(255);
  image(original, 0, 0, width/2, height); 

  int tamCuadro = 200;
  int margen = 5;

  
  for (int fila = 0; fila < 2; fila++) {
    for (int col = 0; col < 2; col++) {
      int x = width/2 + col * tamCuadro + tamCuadro/2;
      int y = fila * tamCuadro + tamCuadro/2;
      dibujarCuadro(x, y, tamCuadro - 2 * margen, fila, col);
    }
  }
}


void dibujarCuadro(int cx, int cy, int size, int fila, int col) {
  float paso = size / float(numCuadros);
  float escala = 1.0;

  
  if (usarDistancia) {
    float distancia = dist(cx, cy, mouseX, mouseY);
    escala = map(distancia, 0, 400, 1.2, 0.5);
  }

  for (int i = 0; i < numCuadros; i++) {
    if (cambiarColores) {
      fill(random(255), random(255), random(255));
    } else {
      if (fila == 0 && col == 0) {
        if (i % 4 == 0) fill(255, 0, 0);
        else if (i % 4 == 1) fill(255, 100, 200);
        else if (i % 4 == 2) fill(0, 200, 255);
        else fill(255, 0, 0);
      } else if (fila == 0 && col == 1) {
        if (i % 4 == 0) fill(255, 0, 0);
        else if (i % 4 == 1) fill(255, 200, 0);
        else if (i % 4 == 2) fill(255, 255, 0);
        else fill(0, 150, 255);
      } else if (fila == 1 && col == 0) {
        if (i % 4 == 0) fill(255, 0, 0);
        else if (i % 4 == 1) fill(0, 200, 0);
        else if (i % 4 == 2) fill(255, 100, 200);
        else fill(0, 200, 255);
      } else {
        if (i % 4 == 0) fill(255, 0, 0);
        else if (i % 4 == 1) fill(255, 100, 0);
        else if (i % 4 == 2) fill(0, 150, 255);
        else fill(255, 255, 0);
      }
    }

    float s = (size - i * paso) * escala;
    rectMode(CENTER);
    rect(cx, cy, s, s);
  }
}

// EVENTOS
void mousePressed() {
  cambiarColores = !cambiarColores;
}

void keyPressed() {
  if (key == 'r' || key == 'R') {
    cambiarColores = false;
    usarDistancia = false; 
  }
  if (key == 'd' || key == 'D') {
    usarDistancia = !usarDistancia; 
  }
}
